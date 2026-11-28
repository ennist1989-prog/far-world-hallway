# Progress — playtest-fixes-blur (27 Nov 2026, 11:13 PM EST)

Thomas playtested the live site (hallway v4.12, teddy room, Purgatory) and asked for a clean, stable look, wider yaw, click-on objects, and one continuous world. This branch does items 1 and 2 only. It is not merged and the live site is unchanged. Publishing still needs Thomas's OK after a re-test.

Photosensitivity work stays paused: this patch only removes look-tied smear, sway, and caps that made looking feel shaky. Static VHS grain, scanlines, chroma wear, and gate weave are left in place.

## What changed

### Teddy's room (`first-floor/teddy-room.html`)
- Removed the camera-rotation motion-blur pass (`updateMotionBlur` in `g1_core.js`, previously a 16-tap smear with a 6.0 shutter while the player looked). `uMot` is now always `(0, 0)`.
- Removed the VIEW slew / look-rate cap / reversal damping (`g4_play.js`, previously 0.45–0.60 rad/s, diagonal cap, and input lag). Look is now direct: `VIEW` follows `PL` on the same frame.
- Removed head-bob on look and walk (stable eye height).
- Disabled the Full-preset 18 fps scene cadence so a pan is not a stuttery film hitch (`g6_main.js`). Post still runs every frame.
- Pitch stays ±80°. Yaw is already unbounded; the 3.75 s establishing hold no longer clamps look.
- WASD: walking is enabled as soon as the tape starts (`PL.control = true` immediately). Input accepts both `e.code` (`KeyW`) and `e.key` (`w` / `W`), which is what QA's headless harness needed.

### Hallway v4.12 (`first-floor/hallway.html`)
- Removed head-bob while looking (pointer locked) and while walking. Camera height stays on `lookY`.
- Yaw was already full 360°. Pitch clamp widened from ±60° (`π/3`) to ±80° to match the other rooms.
- Static VHS (scanlines, head-switch band, grain, chroma) is unchanged.

### Purgatory (`purgatory/index.html`)
- Removed the look-speed frame-blend pass (HOUSE §9.20: previous canvas composited at up to 0.55 alpha while yaw/pitch moved).
- Removed the ±80° yaw clamp (`YAW_MAX` is now unbounded). Pitch stays ±80°.

`/v4.7/` is the archived older hallway and was not changed. The start-page menu is unchanged; connecting the rooms is Freebuff entry 15.

## Headless test evidence

Script: `/workspace/far-world-playtest-fixes/tests/look-stability.cjs`  
Log: `/workspace/far-world-playtest-fixes/logs/look-stability.json`  
Result: **PASS** on teddy, hallway, and Purgatory (Chrome + SwiftShader, 1280×720).

| Check | Teddy | Hallway | Purgatory |
| --- | --- | --- | --- |
| One-frame pan matches sharp target, not a 50/50 blend (no smear) | mse to sharp ≈ 0.00005 vs blend 373; `uMot = (0,0)` | mse 0 vs blend 19 | mse 0 vs blend 189 |
| After a pan, yaw/pitch hold still (no oscillation) | span 0, rate 0 over 45 frames | (pose is immediate) | span 0 over 45 frames |
| Yaw past ±80° (e.g. ±3.5 and ±6.5 rad) | yes | yes | yes |
| Pitch clamped at ±80° | exact | exact | exact |
| WASD moves the player | KeyW 1.045 m / s; `keys.w` alias 1.134 m / s | holdForward 1.40 m / s | (corridor W/S already worked; not a reported break) |

The prior live teddy WASD miss was a real lock: walking stayed off for 3.75 s after start, and harnesses that set `keys.w` (instead of `keys.KeyW`) never moved. Looking still worked, which matches what QA saw. Both are fixed here.

## Freeze

After this commit: `/workspace/far-world-playtest-fixes/frozen/<shortsha>/` with a sha256 manifest. Do not merge or deploy until Thomas says so.

## Follow-ups (not in this branch)

Queued for Freebuff on top of `playtest-fixes-blur`, targeting this repo: click-on interactables (entry 14) and one continuous hallway → Purgatory → teddy path with no level-select menu (entry 15).
