# Impact frame, footage pacing, and Far World era props

**Summary (three sentences).**
Thomas's four Notepad samples are real Godot 4 shader notes — three with full code, one a URL only — and they point at [godotshaders.com](https://godotshaders.com/), not "god.shader.com." The [Anime Style Impact Frames](https://godotshaders.com/shader/anime-style-impact-frames/) shader is the right backbone for the mannequin-touch hit (flash, 2-tone gradient, UV warp, and, in planar mode, vertical streaks), and the [Analog Horror VHS](https://godotshaders.com/shader/analog-horror-vhs-tracking-chroma-grain/) shader is the right partner for the rewind/teleport; the melting-hallway and paper shaders belong on atmosphere and props, not on the fail state. This note picks those two, proposes a single-pulse hit timing with a photosensitivity cap of no more than three flashes per second ([WCAG 2.3.1](https://www.w3.org/WAI/WCAG21/Understanding/three-flashes-or-below-threshold)), explains how multi-angle phone footage should be timed into a beat sheet (building on the checklist in [hex-review.md](hex-review.md)), and lists 90s/2000s prop categories as suggestions, not an inventory of what Thomas owns.

This is research and advice only. Nothing here is game code, a prototype, or a request to implement.

## 1. Shader review

The samples were copied from Thomas's desktop Notepad notes into `/workspace/shader-notes/`. The brief called them "god.shader.com" references; the notes themselves correctly use **godotshaders.com**. All four pages (the three linked in the notes, plus the unlinked melting-hallway shader, identified by matching the pasted code) were fetched on 26 November 2026 (America/New_York) and match the pasted source.

Godot Shaders policy ([license page](https://godotshaders.com/license/), [FAQ](https://godotshaders.com/faq/)): shader *code* on the site is CC0, MIT, or GNU GPL v.3, chosen per post and listed at the bottom of that post; featured images, videos, and embedded assets are not covered. Automated fetches of the posts omitted the license footer, so unless a license is verified below from the author's own source, **read the footer on the post (and reject GPL for a closed-source game) before shipping.**

### Sample-by-sample verdicts

Rated for (a) the impact frame — 2-tone threshold/posterize, inverted flash, vertical speed lines, face/UV warp, chromatic split — and (b) the rewind/teleport — VHS rewind, scanline tear, time-reverse smear, fade-through-white.

**1. `GOD_DOT_IDEAS_anime_style_impact_frames.txt` — [Anime Style Impact Frames](https://godotshaders.com/shader/anime-style-impact-frames/) by ProfesorShader (posted 8 November 2026).** Full `canvas_item` source is in the note, and it matches the live post. Author's example repo, [profesorshader/shader-impact-frames](https://github.com/profesorshader/shader-impact-frames), is MIT (LICENSE file and GitHub API, copyright 2026 Profesor Shader); keep the MIT notice if this code is used. A `t` parameter runs two phases: below `half_position` (default 0.5) the screen mixes to `flash_color` (default white); after that, noise warps screen UVs and a 1D `grad_tex` remaps luminance, so a black-and-white or inverted gradient gives the 2-tone look. `#define USE_RADIAL_MODE 1` in the pasted note is a radial burst from `radial_center`; set it to `0` for planar mode, then use `rot_angle` / `scale_v` so the streaks run **vertically**, which is what the design asks for. Face warp is already there if `radial_center` or the distortion is aimed at the mannequin. **(a) Strong fit** for flash, 2-tone, vertical streaks, and face warp. **No chromatic split.** **(b) Weak** — there is a flash, not a rewind, scanline tear, time-reverse smear, or fade-through-white into a new room.

**2. `god_dot_ideas_sample.txt` — "melting hallways."** Full `spatial` / `unshaded` source is in the note; **no URL**. The pasted code matches [Parallax mapping](https://godotshaders.com/shader/parallax-mapping-2/) by binbun (posted 4 March 2026), a layered polar-noise parallax the author describes as portal VFX. Per-post license was not verified. **(a) Poor** for the hit — this is a material on a mesh, not a screen-space impact frame, and it has none of the 2-tone / streak / face-warp tools. **(b) Poor** for rewind. **Useful elsewhere:** Far World hallway atmosphere, a wall or floor that looks like it is receding or melting. Do not hang the fail state on it.

**3. `God_dot_ideas_sample_2.txt` — [3D Paper from Plane Mesh](https://godotshaders.com/shader/3d-paper-from-plane-mesh/) by This But Dragons (posted 11 November 2026, updated 17 November 2026).** Full `spatial` source plus the author's write-up and URL are in the note; they match the live post. Per-post license was not verified. The demo's paper textures are "[Texture Pack: Paper 01](https://juliovii.itch.io/paperpk01)" by JulioVII, **CC-BY** (itch.io page verified; commercial use allowed except reselling — attribution required if that pack is used). **(a) Not applicable** to the impact frame. **(b) Not applicable** to rewind. **Useful elsewhere:** found notes, sketches, and Polaroid backs in the house.

**4. `god_dot_shader_ideas.txt` — [Analog Horror VHS (tracking, chroma, grain)](https://godotshaders.com/shader/analog-horror-vhs-tracking-chroma-grain/) by assetsmith (posted 24 October 2026, updated 9 November 2026).** **URL only; no shader code in the note.** The live post is a Godot 4 `canvas_item` post-process: rolling tracking band, per-line wobble, head-switch noise at the bottom of the frame, chroma shift/bleed, grain, static streaks, tint, and a `flicker` uniform. The source comment on that page says `(c) 2026 assetsmithpixels — MIT License (see LICENSE.txt)`. A Godot Asset Library listing for "Analog Horror VHS Shader LITE" instead says "Custom (free personal and commercial use, no redistribution)." **Treat that as a conflict: use the license file that ships with the copy you actually take, and do not assume MIT if you download the Asset Library pack.** **(a) Partial** — chromatic split and vertical-ish static streaks are here; it is not a 2-tone impact frame or a face warp. **(b) Strong fit** for the rewind/teleport language: spike `tracking_amount`, `line_wobble`, `chroma_shift`, and `static_lines` as the world is pulled back to a save. It does not, by itself, time-reverse the image or fade through white. Keep `flicker` near zero on this beat (see photosensitivity below).

### Top picks

- **Impact frame:** Anime Style Impact Frames, **planar mode**, black-and-white (or inverted) `grad_tex`, vertical streaks, warp aimed at the face. This is the only sample that actually does the hit Thomas described.
- **Rewind / teleport:** Analog Horror VHS, driven as a second post-process after the impact hold, then cut or dissolve into the save room. Chromatic split lives here, not in the impact shader.
- **Do not use for the hit:** the parallax "melting hallway" material and the paper-plane shader. Keep them on environment and props.

A small custom add may still be needed for a true time-reverse smear or a fade-through-white into the respawn view. That is a gap in the samples, not something to invent from the melting shader.

### Proposed hit timing (assume 60 fps; scale the same beats at 30 fps)

Drive `t` with a one-shot curve. Do not loop the flash, and do not oscillate full-screen white and black.

| Beat | Frames (60 fps) | Time | What happens |
| --- | ---: | ---: | --- |
| Contact | 0 | 0 ms | Gameplay freezes. The mannequin face is already in frame. |
| Hard white | 1–3 | ~16–50 ms | Single pulse to white (`flash_color`). One transition, not a strobe. |
| B&W streak hold + face warp | 4–15 | ~66–250 ms | Second phase of the impact shader: 2-tone hold, vertical streaks, UV warp. This is a **hold**, not a flicker. |
| Rewind transition | 16–40 (normal) / 16–90 (hardcore) | ~0.27–0.67 s / up to ~1.5 s | Hand off to the VHS shader: tracking tear, chroma split, static. The image should feel like tape being pulled backward. Then cut or dissolve to the respawn view with VHS intensity falling off. |
| Respawn | after the rewind | — | Player is at the previous save (normal) or the start of the game (hardcore). No extra flash on landing. |

Total: under about one second on normal, about 1.5–2 seconds on hardcore. If a fade-through-white into the save room is wanted, use it *instead of* a second white pulse, and keep the whole beat to one light-to-dark or dark-to-light pair.

### Photosensitivity (required, not optional)

A full-screen white or black cut is a large, high-luminance flash. [WCAG 2.3.1 Three Flashes or Below Threshold](https://www.w3.org/WAI/WCAG21/Understanding/three-flashes-or-below-threshold) (Level A) requires that content not flash more than three times in any one-second period, unless it is below the general-flash and red-flash thresholds. [Technique G19](https://www.w3.org/WAI/WCAG21/Techniques/general/G19) is the conservative test: **no component flashes more than three times in any 1-second period.** The [HardingFPA](https://www.hardingfpa.com/) is the commercial analysis tool used against broadcast flash and spatial-pattern guidelines (Ofcom, ITU, and related); a flash failure there also depends on area (on the order of 25% of the frame) and amplitude. A full-screen hit will clear the area test, so frequency and repetition are what you have to control. The Trace Center's PEAT tool is **not** licensed for commercial games; HardingFPA is the path to use before ship.

Practical rules for this beat:

- **Cap: no more than three flashes per second**, and prefer a single white pulse plus a hold, never a white-black-white strobe.
- Ship an **accessibility toggle** (Full / Reduced / Off). Reduced: no full-screen white, no flicker, a short desaturate and soft warp, then a fade to the save. Off: a fade or hard cut only.
- Leave the VHS `flicker` uniform near zero during the hit.
- High-contrast scrolling streaks are also a spatial-pattern risk on a Harding test; keep streak contrast moderate and do not run them as a rapid high-contrast roll.

### Normal vs hardcore

Keep the same visual language so a hit is always readable as a fail, not as damage.

- **Normal:** shorter rewind (~0.6–0.8 s total), land at the previous save, a little residual grain as a "you were touched" bruise. The run continues.
- **Hardcore:** one touch ends the run. Longer, colder rewind (about 1.5–2 s) that should feel like the whole tape is being eaten back to the leader, then the start of the game. Optional: a single black pulse instead of white, still one flash, not a strobe. No mid-run checkpoint comfort.
- **No-touch / speedrun:** the hit is a failed run, not a stylish garnish. Do not make it so handsome that players want to trigger it.

## 2. Footage-to-pacing plan

This builds on the phone-footage checklist already in [hex-review.md](hex-review.md) (pass and body, light, ten-second stills, timing and sound, domestic wrongness). When the video lands, review it against that list. What follows is how to *mine* a multi-angle walkthrough — mannequins staged through the house, filmed from several angles, slow passes, light sweeps, ten-second stills — for jump-scare timing and dread pacing, including where touch and pop-up hits should go. The look-away rule itself is in [moves-when-unseen.md](moves-when-unseen.md): the beam is the lock; most figures never move.

**Time it.** Use a stopwatch or, better, the video timecode. Log: room-to-room walk time at a human pace; time from a figure leaving the frame (a committed look-away) to the next possible reveal; how long a light sweep takes to travel hand → dress → face; whether the ten-second stills are actually held for ten seconds; and, on each still, the first moment a figure starts to *feel* wrong even if nothing moves.

**Map angles to look-away moments.** The useful shots are the ones that lose a figure for real: leaving a doorway with someone behind you, a 180° turn in a hallway, passing a body so it exits the back of the flashlight cone, a stair landing or corner when you look back. Glances that keep the figure on the edge of the frame will not teach the rule. Over-shoulder and threshold shots are the ones to mark as "player chose to look away."

**Scrub the stills for the doubt frame.** On each ten-second hold, step frame by frame and mark the first frame where posture, eyeline, or distance from a doorframe starts to feel off. That timestamp is the doubt beat — how long the game can hold before a confirm. Accidental micro-movement (a wobble, a breeze) is a defect for a "locked while seen" rule; note it for the next shoot, as the checklist already asks.

**Log a beat sheet.** One row per shot: timecode, room, camera angle, shot type (pass / sweep / still), duration, what is in frame, first doubt frame (if any), and recommended game use — baseline (nothing wrong), look-away setup, look-away confirm, pop-up placement, touch-range, or do not use.

**Place touch and pop-up scares from the footage, then space them.** Touch hits should come from close-pass angles where a figure is just out of frame at arm's length — if it stepped forward, it would connect. Pop-ups belong on corners, door edges, and behind the player after a committed turn. Do not put a touch and a pop-up in adjacent rooms. The impact-frame hit is a fail / reset, not a jump-scare garnish, so only a few locations in the house should be able to touch the player at all. For everything else, use the same spacing already in the checklist and in Grip: linger, move one thing, linger longer; irregular gaps; one long stretch of nothing; first sight of a mannequin reads as furniture, not as a sting.

## 3. Far World props (suggestions, not inventory)

Thomas has physical 90s, 2000s, and mid-2000s objects for Far World atmosphere. There is **no itemized list** of what he actually owns. The categories below are era-appropriate environmental-storytelling suggestions for a liminal VHS world. They are not a claim that any of these items are in the collection.

| Category | One-line storytelling use |
| --- | --- |
| VHS tapes with handwritten labels | A house that recorded itself; labels that do not match the tape, or that name a room the player has not reached yet. |
| CRT televisions | Dead glow, snow, or a freeze-frame of the room the player is standing in; a "safe" light that also marks them. |
| Answering machines / cassette memos | Off-screen voices; a message left for someone who is not coming back. |
| Flip phones / early camera phones | Blurry "before" photos of the house, missed calls, a period stand-in for the player's own light. |
| Polaroids | Dated family shots with a figure in the background that is missing from the next print. |
| Lisa Frank / Tamagotchi-era kids' things | A child's room that makes the mannequins worse; bright plastic against the VHS grit. |
| Mall and food-court remnants | A tray, a directory map, a store tag still on a figure — shop-floor language dragged into a house. |
| Burned CDs / Sharpie mix discs | Found audio, false comfort, a life paused mid-mix. |
| Landline phones and paper phone books | A number circled, a cord that goes nowhere, a ring that should not happen in an empty room. |
| Disposable cameras and mid-2000s point-and-shoots | Undeveloped film, or a stack of drugstore prints that almost match the rooms as they are now. |

**Prompt for Thomas.** Please photograph or list what you actually have, by room if you can: object, approximate year, and whether it is display-only or something a player could pick up. This section can then be turned from a wishlist into a real inventory.

## Sources

- Thomas's Notepad copies, `/workspace/shader-notes/`: `GOD_DOT_IDEAS_anime_style_impact_frames.txt`, `god_dot_ideas_sample.txt`, `God_dot_ideas_sample_2.txt`, `god_dot_shader_ideas.txt` (read 26 November 2026, America/New_York).
- ProfesorShader, [Anime Style Impact Frames](https://godotshaders.com/shader/anime-style-impact-frames/), Godot Shaders, 8 November 2026; MIT LICENSE in [profesorshader/shader-impact-frames](https://github.com/profesorshader/shader-impact-frames).
- binbun, [Parallax mapping](https://godotshaders.com/shader/parallax-mapping-2/), Godot Shaders, 4 March 2026 (matches the unlinked "melting hallways" paste).
- This But Dragons, [3D Paper from Plane Mesh](https://godotshaders.com/shader/3d-paper-from-plane-mesh/), Godot Shaders, 11 November 2026.
- JulioVII, [Texture Pack: Paper 01](https://juliovii.itch.io/paperpk01), itch.io, licensed CC-BY.
- assetsmith, [Analog Horror VHS (tracking, chroma, grain)](https://godotshaders.com/shader/analog-horror-vhs-tracking-chroma-grain/), Godot Shaders, 24 October 2026; in-source MIT comment on that page. Godot Asset Library LITE listing: "Custom (free personal and commercial use, no redistribution)."
- Godot Shaders, [License](https://godotshaders.com/license/) and [FAQ](https://godotshaders.com/faq/).
- W3C, [Understanding SC 2.3.1: Three Flashes or Below Threshold](https://www.w3.org/WAI/WCAG21/Understanding/three-flashes-or-below-threshold); [G19](https://www.w3.org/WAI/WCAG21/Techniques/general/G19).
- Cambridge Research Systems, [HardingFPA](https://www.hardingfpa.com/); Trace Center, [PEAT](https://trace.umd.edu/peat/) (PEAT is not licensed for commercial games).
- Existing house notes: [hex-review.md](hex-review.md) (footage checklist, scare spacing), [moves-when-unseen.md](moves-when-unseen.md) (look-away rule).
