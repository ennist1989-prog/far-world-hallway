# Lock Spec — What Counts as "Seen"

**Summary (three sentences).** The whole mechanic rests on one boolean — is this figure being observed right now — and the notes so far describe it in prose ("the beam is the lock") without saying what happens at the edge of the frame, in a mirror, behind glass, or when only an arm is visible. This one-pager turns that into a rule with a stated anchor, a coverage test and fourteen worked cases, so a programmer, a level designer and Hex can argue about the same thing. Every rule here is a **proposal**: the six decisions in §10 are Thomas's, and nothing should be treated as settled until they are answered.

Status: proposal, 26 November 2026. Research and design only; no game code.

## 1. The rule

A figure may change only while **no observation channel holds it**. If any channel holds it, it is a statue. The flashlight beam is the primary channel; the screen frame is the fallback for when the beam is elsewhere.

"Seen" is a property of a **figure**, evaluated against an **observer** (the player camera). It is not a property of the room, and it is not a timer that starts when the player turns away.

## 2. The anchor

Evaluate the lock on the figure's **head**, not its centre of mass and not its whole silhouette.

- The head is what the player recognises as a person; a torso behind a sofa is furniture.
- A head anchor gives predictable behaviour at doorframes and corners, which is where most of the mechanic's play happens.
- A whole-body coverage test is more "correct" and much harder to tune; it also lets a figure freeze itself by hiding one leg, which reads as a bug.

Consequence: a figure may move with its body in plain view as long as the head is fully behind cover. That is deliberate — it is the peek-a-boo beat — and it is the reason §8 exists.

## 3. Channels

**S1 — beam.** The head is inside the flashlight cone, within `beam_range`, and the camera-to-head segment is not blocked by opaque geometry. Graded, not binary: the beam edge is soft, so use the cone's core (where the light is at least half intensity) as coverage and treat the falloff ring as no coverage.

**S2 — silhouette in frame.** The head is inside the screen rectangle, at least half of it is unoccluded, and it is distinguishable from the background at current exposure — a shape against a lit doorway, a black cut-out against a dim wall, a face lit by a TV. "Distinguishable" means a player could tell it is a head, not that the renderer drew pixels.

A figure lit by a lamp is seen by S2. A figure in a room with no light and no backlight is not seen by anyone.

**Neither channel:** the figure is released and may move under §8.

## 4. Per-figure or global

**Per-figure.** If the player holds figure A, figure B behind them is released. The observer state (where the camera is pointing) is global; the held state is not.

Two refinements matter more than the choice:

- **Stagger.** When several figures are released at once, only one may move per release window (§8). Otherwise a room of six figures all step at the same frame and the effect reads as a glitch, not as a threat.
- **Stage rule (alternative, currently rejected).** If *any* figure is seen, the whole house holds still. This makes pairs and groups safe to look at, removes the flanking tension that the Condemned sheet documents, and turns rooms into single-figure puzzles. Keep it on the shelf for a tutorial room or an accessibility option.

## 5. Edge of frame

The frustum edge is a hard line and camera jitter sits on it, so add a margin and hysteresis:

- **Held:** the head is inside the inner 90% of the frame.
- **Edge band:** the outer 10% is not coverage. A head that drifts into the band starts a release timer.
- **Hysteresis:** release takes ~0.3 s (about 6 frames at 60 fps, 9 at 30) of continuous non-coverage. The same delay applies going the other way, so a figure stepping into the band is not instantly re-held mid-step.
- **Near field override:** any figure within 1.5 m and in the front hemisphere counts as held regardless of frustum. Without this, a player can stand nose to nose with a figure, look at the ceiling, and it can step through them — which is both unfair and the fastest way to make the rule feel arbitrary.

## 6. Reflections

**Reflections count as seen.** The rule the player is told is "it stops when you look at it", and a mirror is looking at it. A clean mirror holds the figure, and players will use mirrors as safety, which is a good, learnable tactic.

The horror comes from surfaces that *nearly* pass the test: a mirror that is dusty, fogged, cracked, angled away or too dark to satisfy S2's "distinguishable" clause does not hold anything. A figure visible only in the grime at the bottom of a mirror is released, and the mirror becomes the room's lie.

A reflection shows a figure the mirror camera can see. Keep the test identical to §3 — do not special-case mirrors by "player is facing the mirror"; that fails as soon as a mirror is at 45° to a doorway.

## 7. Glass, doors, partial occlusion

Grade the surface, not the object type:

| Surface | Counts as seen? | Note |
| --- | --- | --- |
| Clear window, clean, lit figure | Yes | Treat as no surface at all |
| Dirty or rainy glass | Yes if the head is still distinguishable | Same test as everything else, no special case |
| Frosted, patterned or steamed glass | No | The head is not readable; the figure may move behind it |
| Door with a gap, head visible through the gap | Yes | The anchor decides, not the door |
| Door ajar, head behind the door, body visible | No | Legal movement with the body in view (§2) |
| Curtain, bedsheet, shower liner | No | Silhouette may read as a person but not as *this* figure — do not award coverage |
| Chain-link, slats, blinds partly open | Yes if the head is half-visible and distinguishable | Graded, like S2 |

"Partial occlusion" therefore is not a separate rule: it is the 50%-of-head rule in S2 plus the distinguishability clause. Two figures through the same gap: each is evaluated separately.

## 8. What movement is legal while released

The lock says *when* a figure may move; these limits say *how far*, and they exist to stop the mechanic from being an instant-loss generator:

1. **One displacement per release window.** A window opens when the figure is released and closes when it is re-held. No second move inside the same window, however long the player looks away.
2. **Distance scales with the gap.** The longer the release, the further it may travel, up to a ceiling. The actual numbers are brief 3's job; the spec only fixes the shape (monotonic, capped).
3. **No approach inside the near field while the player is facing forward.** A figure may not close to touching distance in a single release window; the last step needs a second release. This is what makes turning back at 2 m feel like a rescue.
4. **Nothing moves during a full-screen blackout**, menu, or cutscene. Otherwise pausing becomes a way to advance the enemy, and a fade becomes an unfair hit.
5. **The tell is always audio**, never a visual you could have caught. Scraping, a shift of weight, a squeak of plastic — the sounds already catalogued in `moves-when-unseen.md` and the Condemned sheet.

## 9. Touch

Touch only resolves from an unseen approach. If the player turns at the last moment and the head enters coverage at any distance, the figure freezes — that freeze is the "caught it mid-step" beat and should be the most common outcome of a near miss. The fail state is the look-away you did not take back, not the one you did.

This keeps the impact-frame hit (see `impact-frame-and-pacing.md`) a failure, not a damage number, and keeps every near miss legible: you saw it, it stopped, you were right.

## 10. Decisions needed from Thomas

Each of these changes the feel of the house, and each is currently answered only by a proposal above.

- **D1 — Head anchor.** Accept head-based lock, with body-only visibility counting as released? Or require the whole silhouette?
- **D2 — Unlit silhouettes.** Does a readable silhouette in the dark (S2) hold a figure, or only the beam?
- **D3 — Per-figure versus stage rule.** Figures move independently, or the house freezes while any figure is seen?
- **D4 — Reflections.** Do mirrors hold figures (proposed), or are they allowed to lie as a rule?
- **D5 — Edge band and hysteresis.** 10% band and 0.3 s release: slower (more forgiving, fewer surprises) or faster (twitchier, more catches)?
- **D6 — Near-field override.** 1.5 m front-hemisphere lock: keep, shrink, or drop?

## 11. Worked cases

Use these as the first test list. "Seen" means the figure is frozen this frame.

| # | Situation | Verdict | Rule |
| ---: | --- | --- | --- |
| 1 | In the beam, head fully lit, 4 m away | Seen | S1 |
| 2 | In the beam, head behind a hanging coat, body lit | Not seen | §2, S2 partial |
| 3 | Unlit at the end of a hall, silhouette against a lit doorway | Seen | S2 |
| 4 | Unlit in a black room, nothing readable | Not seen | §3 |
| 5 | Head in the outer 8% of frame, drifting out | Seen for 0.3 s, then released | §5 |
| 6 | 1 m away, player looking at the ceiling, figure below frame | Seen | §5 near field |
| 7 | Visible only in a clean mirror | Seen | §6 |
| 8 | Visible only in a mirror fogged by shower steam | Not seen | §6, S2 |
| 9 | Behind a clear window, lit | Seen | §7 |
| 10 | Behind frosted glass, lit | Not seen | §7 |
| 11 | Head through a doorway gap, body hidden | Seen | §7 |
| 12 | Head behind the door, body visible through the gap | Not seen | §2 |
| 13 | Two figures: one in the beam, one behind the player | First held, second released; only the released one moves | §4, stagger |
| 14 | Player pauses, screen fades to black | Nothing moves | §8.4 |

## 12. What this spec does not decide

Timings and distances (brief 3 and the field measurement), the anti-stare rules for a player who simply never looks away (stare-stall brief), the sound design (`off-screen sound language`, brief 11), and how many figures a room may hold (`art direction`, brief 9). It also does not settle whether the figures are people; that is the story brief.

## Related files

- [moves-when-unseen.md](moves-when-unseen.md) — the source of the rule and the reference set: SCP-173, the Weeping Angels, FNAF, Silent Hill.
- [condemned-barts-behaviour-sheet.md](condemned-barts-behaviour-sheet.md) — why the commercial cousin is ambush AI with ambiguity rather than a clean gaze lock.
- [timed-look-away-reference-sheet.md](timed-look-away-reference-sheet.md) — the measurement protocol the movement limits in §8 depend on.
- [impact-frame-and-pacing.md](impact-frame-and-pacing.md) — the touch/fail beat, and why every near miss should read as a freeze.
