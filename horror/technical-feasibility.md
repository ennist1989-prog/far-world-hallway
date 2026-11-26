# Technical feasibility — melting walls and multiplying figures

**Summary (three sentences).**
Both effects are achievable in a Godot 4 first-person project without custom engine work: the melting wall is a vertex-displacement material driven by a world-space mask, and the mannequin multiplication is a pre-placed pool of actors swapped while the room is unobserved, gated by a visibility test that implements [lock-spec.md](lock-spec.md). The hard parts are not rendering — they are **detection accuracy**, **readability** and **allocation spikes**, and all three are solved by doing less, less often. This note is high-level only: no code, no shader source, no measured timings.

## 1. Three effects, three cost classes

| Effect | Cheap version | Expensive version | Recommended |
| --- | --- | --- | --- |
| Wall melt / warp | vertex displacement in a spatial shader, 2–5 cm | CPU mesh deformation or real geometry change | Shader displacement, collision unchanged |
| Surface decay (wet, peel, veins) | second normal/albedo layer, decals | parallax occlusion mapping on every wall | Decals + one detail layer on hero walls |
| Look-away detection | camera frustum test | per-frame raycast against occluders | Frustum first, raycast at ~10 Hz with hysteresis |
| Figure multiplication | pre-placed hidden actors, transform swap | runtime instantiation during a turn | Pool, pre-placed per room, swap unobserved |

The pattern is the same in all four rows: **spend the budget before the player arrives**, not at the moment of the trick.

## 2. Melting walls

**The standard approach.** A `spatial` shader displaces vertices along their normals by a noise field sampled in world space, scaled by a per-material `melt` uniform. Because the noise is world-space, adjacent wall pieces deform coherently instead of tearing at the seams. The amplitude stays small — two to five centimetres — and the mesh's **collision shape does not move**. The wall the player bumps into is the wall that was authored; only the visible surface sags.

This maps directly onto the shader Thomas already has: the "melting hallways" note is a parallax/polar-noise material ([Godot Shaders, parallax mapping](https://godotshaders.com/shader/parallax-mapping-2/)), useful for the *look* of depth and recession, but it is a material on a mesh, not a screen effect. It belongs on walls and floors, not on the fail state ([impact-frame-and-pacing.md](impact-frame-and-pacing.md) reaches the same verdict).

**Why not post-process distortion as the default.** A screen-space UV warp is cheap and affects everything in frame, including UI and the player's hands. It is also the most common cause of motion sickness in first-person games, and it destroys the fixed edges the art direction depends on. Use it for one or two subjective moments, not as the baseline. A localized mesh shader keeps the doorframes true.

**Surface decay.** Decals for damp patches, peeling paint and rust blooms are cheaper and more art-directable than a procedural material on every surface. One detail layer (normal + roughness) on hero walls, decals elsewhere. The *Silent Hill 3* capillary layer is a second texture blended in a shader — achievable, but reserve it for the single overt room.

**Performance notes to verify, not assume:**

- Vertex displacement is cheap on dense meshes and ugly on coarse ones; test the actual wall meshes, not a sphere. If walls are quads, displacement will not read — add subdivision only on the affected panels.
- Displaced vertices move the shadow silhouette. Keep amplitude small or shadow acne and peter-panning appear; consider disabling shadow casting on melted panels.
- Overdraw from layered transparent decals is the likelier cost than the vertex work.
- The whole room should share one material instance where possible; a unique shader per wall multiplies draw calls.

## 3. Look-away detection

The rule in [lock-spec.md](lock-spec.md) needs a "seen" test with three tiers of accuracy. Implement them as a ladder, cheapest first:

1. **Frustum test.** `Camera3D.is_position_in_frustum()` answers "is this point roughly on screen" in constant time ([Godot docs](https://docs.godotengine.org/en/stable/classes/class_camera3d.html)). Use it to reject most figures every tick. It does not know about walls.
2. **Screen-visibility notifier.** `VisibleOnScreenNotifier3D` fires when an object enters or leaves the viewport ([Godot docs](https://docs.godotengine.org/en/stable/classes/class_visibleonscreennotifier3d.html)). Good for coarse enter/leave events; still does not handle occlusion, and its AABB is generous.
3. **Occlusion raycast.** One ray from the camera to the figure's head anchor, against walls and props only, confirms line of sight. This is the accurate test and the expensive one. Run it only for figures that pass tiers 1–2, and only every ~100 ms, not every frame.

**Hysteresis is mandatory.** The lock spec's 0.3 s release delay means a figure must be continuously unobserved for that long before it may move. This single rule removes most flicker cases: a figure at the edge of the beam, or behind a bannister, will not oscillate between seen and unseen. Implement the timer per figure, reset on any positive sighting.

**Do not use physics visibility alone.** `OnBecameInvisible`-style callbacks (Unity's equivalent is documented [here](https://docs.unity3d.com/ScriptReference/MonoBehaviour.OnBecameInvisible.html)) fire on renderer culling, not on the player's actual view — a figure behind the player but inside the camera's shadow pass can still count as visible. Detection must be camera- and occlusion-based, not renderer-based.

**Batch and schedule.** Evaluate detection on a fixed 10 Hz tick, staggered across frames (a third of the figures per tick). A house with thirty figures then costs three raycasts per frame worst case, not thirty.

## 4. Multiplying figures

**Pre-place, do not spawn.** Instantiate the full cast for a room at load, hidden and collision-disabled. On a release event, move a pooled actor to its staged transform, enable it, and play no spawn effect. Runtime instantiation of a skinned mesh during a turn is the classic cause of a frame hitch exactly when the player is looking for one.

**Set dressing is not a character.** Background mannequins that never move can be `MultiMeshInstance3D` instances — one draw call for dozens ([Godot docs](https://docs.godotengine.org/en/stable/classes/class_multimeshinstance3d.html)). Keep real `Node3D` actors only for the handful that can move, and give those LODs and a shared skeleton where possible.

**Stage the count change off-camera.** The added figure should be placed while the room is fully unobserved — behind a door, around a corner, after a full look-away — not at the edge of the frame. This is both an aesthetic rule and a technical one: pop-in at the frustum edge is the most common way the trick reads as a bug.

**Audio is part of the budget.** A single material sound per change (joint squeak, plaster crack) is cheap and does most of the work. Do not stack a stinger and a sound; see [aesthetic-direction.md](aesthetic-direction.md).

## 5. Readability and performance risks

| Risk | Symptom | Mitigation |
| --- | --- | --- |
| Over-distortion | Player cannot find doors or stairs; motion sickness | Distort surfaces, never edges; cap amplitude; keep one landmark per room undistorted |
| Detection false positives | Figure moves while genuinely watched | Raycast to head anchor, hysteresis, ignore peripheral slivers under a minimum screen area |
| Detection false negatives | Figure fails to move when the player looked away | Fall back to frustum + timer; log releases that never fire |
| Pop-in at frame edge | Count change reads as a spawn | Only change fully unobserved rooms; pool actors; no spawn VFX |
| Allocation hitch | Frame drop at the exact moment of the trick | Pre-instantiate; no `load()`/`instantiate()` during play; warm shaders |
| Shadow artifacts | Melted wall casts a detached shadow | Disable shadow casting on melted panels or keep amplitude tiny |
| Material explosion | Draw calls climb room by room | Shared materials, decals instead of unique shaders, MultiMesh for dressing |
| Save/load inconsistency | Reloaded room shows a different count than the player remembers | Store per-room state (melt level, figure count) in the save, not just the transform |

**The readability contract:** the player may be confused about *what changed*, never about *where the exit is*. If a tester cannot describe the room's layout after one pass, the effect budget for that room is too high.

## 6. Prototype order

1. **Paper.** One room, three figures, one wall patch. Walk the look-away beat with no engine at all. If the count change does not land on paper, no shader will save it.
2. **Greybox.** Block a room in Godot, implement detection with frustum + raycast + hysteresis, and swap one figure. Measure false positives and false negatives before any art.
3. **Material pass.** Add the displacement shader to one wall panel at 2 cm, then 5 cm, and check navigation and shadows at both.
4. **Density pass.** Raise the figure count until the room stops being countable, then step back one. That number is the cap.
5. **Perf pass.** Measure on the target machine with the real wall meshes, not a test scene. This note deliberately contains no frame budgets because none have been measured.

## 7. What this note does not cover

- Shader source, node graphs or project settings.
- Networking or co-op (out of scope).
- The fail-state impact frame and rewind timing — those are in [impact-frame-and-pacing.md](impact-frame-and-pacing.md).
- Exact detection thresholds. The lock spec's numbers are provisional until Thomas answers D1–D6.

## Sources

- Godot Engine docs: [`Camera3D.is_position_in_frustum()`](https://docs.godotengine.org/en/stable/classes/class_camera3d.html); [`VisibleOnScreenNotifier3D`](https://docs.godotengine.org/en/stable/classes/class_visibleonscreennotifier3d.html); [`MultiMeshInstance3D`](https://docs.godotengine.org/en/stable/classes/class_multimeshinstance3d.html).
- Unity docs: [`MonoBehaviour.OnBecameInvisible()`](https://docs.unity3d.com/ScriptReference/MonoBehaviour.OnBecameInvisible.html) — cited only to explain why renderer visibility is not player visibility.
- [Parallax mapping shader](https://godotshaders.com/shader/parallax-mapping-2/), Godot Shaders — the "melting hallway" material reviewed in [impact-frame-and-pacing.md](impact-frame-and-pacing.md).
- [Game Developer on *Layers of Fear*'s unstable level design](https://www.gamedeveloper.com/audio/terrifying-players-with-unstable-level-design-in-i-layers-of-fear-i-) — the shipped precedent for changing rooms behind the player.
- [lock-spec.md](lock-spec.md) — the definition of "seen" these systems implement.
