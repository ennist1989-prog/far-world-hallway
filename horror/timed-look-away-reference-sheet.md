# Timed look-away reference sheet

**Summary (three sentences).**
This sheet covers the four look-away sequences named in Hex's brief — the RE7 demo mannequins, the Shadows of Rose House Beneviento chase, a SCP-173 encounter in Containment Breach, and the first Weeping Angel advance in "Blink" — recording what each source establishes about start and end, distance moved, whether the move is shown or only a new pose, and the audio tell. Nothing here is a frame-accurate timing: none of the four has published timestamps, so the timing column says what is sourced, marks what is still unmeasured, and the protocol below says how to fill the gaps. Measurements that do exist are labelled with their source and their confidence, because "about 4–5 seconds" from a 2013 design blog is not the same kind of fact as the shooting script's stage directions.

## Confidence key

- **Sourced** — stated by the primary text (script, official wiki page) or a first-party store page.
- **Secondary** — a guide, review or design blog; usable, but not authoritative.
- **Unmeasured** — no published value; the cell says what to record and from which footage.

## The sheet

| # | Reference | Beat and position in the sequence | Movement | Shown, or new pose only | Audio tell | Timing |
| --- | --- | --- | --- | --- | --- | --- |
| 1 | **RE7 demo** — attic trio | Upstairs, on the way to the attic, a corner of three armless mannequins facing the wall; roughly ten minutes into *Beginning Hour*. Player turns away to search, then looks back. | All three have rotated to face the player; a fourth figure is now standing in front of the stairs just climbed. Distance is not countable — the pose swap is the whole event. | **New pose only.** No transition, no camera push, no shake; the game uses the player's own turn as the cut. | **None.** Explicitly no stinger, no music cue, no zoom (WhatCulture notes "zero fanfare"). | **Unmeasured.** No timestamp published. Position marker: ~10 min into the demo. Record: time of the turn away, time of the return, and the yaw of each figure before and after. |
| 2 | **RE7 demo** — fourth figure | Same pass, on the return to the stairs. | One figure has relocated to block the stair head. | **New pose only.** Same silence. | None. | **Unmeasured.** Same pass as row 1. |
| 3 | **Shadows of Rose** — Study mannequin | Immediately after the Breaker Box key opens the box and the fuse is found missing; the Study door opens and the Mia mannequin is standing in it. | It walks toward Rose only while unobserved; gaze freezes it on the spot. Contact is a kill. | **Mostly new pose, with a tell.** It is frozen whenever on camera, but the animation is visible when it re-enters frame — described as a stuttered walk — and players can occasionally catch a step just before it freezes. | **Loud, rapid footsteps** while it is off-screen, plus a squeaking joint sound. This is the primary evidence of movement. | **Unmeasured numerically.** Guides disagree on speed — TheGamer calls it "not super fast", Neoseeker calls it "very fast" — which is itself worth recording as a conflict. Record: gaze-break to gaze-return, and displacement per break in body-lengths. |
| 4 | **Shadows of Rose** — fuse return | Starts the moment the fuse is lifted: the mannequin breaks the bedroom door in, then more join in the Kitchen and hall, ending with one blocking the Study door that must be made to step aside by looking away. | One established figure plus up to three more; each advances only while outside the view cone. The final one must be baited out of a doorway. | **New pose plus visible approach.** Same stutter when it comes back into frame; doors are physically broken, which is a shown event rather than a teleport. | Footsteps and squeaking, now from several directions; the door break is a hard cue. | **Unmeasured.** Record each doll's break/return interval separately — this is the only one of the four with more than one mover on screen at once. |
| 5 | **SCP – Containment Breach** — blink cycle | Any 173 encounter; the HUD blink bar is the clock. | SCP-173 advances one "step" each time the player blinks or breaks line of sight. If a door is in the way it opens it instead. | **New pose only.** The player's own blink (black frame) or turn is the cut; movement itself is never animated on screen. | **Stone scraping**, the sound of it travelling while unobserved. | **Secondary, approximate: a blink timer of about 4–5 seconds** (Fistful of Wits, 2013). The official wiki states the bar depletes and forces a blink but gives no number — treat 4–5 s as a working figure to verify in-game, not a citation. |
| 6 | **SCP – Containment Breach** — look-away | Same encounter, deliberately looking away instead of blinking. | "Moves significantly closer" per the wiki; one displacement per eye-contact break. | **New pose only**, revealed when the player looks back. | Stone scraping; door-opening sound if it takes the door route. | **Unmeasured.** No distance published. Record: metres between player and 173 at look-away and at look-back, plus blink-bar percentage at each break. |
| 7 | **"Blink"** — garden rock | Sally pulls back the wallpaper, reads the Doctor's message, ducks; the rock comes through the window; the Angel in the garden has moved closer. | One advance, from the garden to nearer the window; Moffat's commentary confirms the Angel threw the rock, which is why it needed to be unobserved. | **New pose only.** The reveal is the moved statue; the throw is heard, not seen. | Breaking glass, then the rock; no musical sting on the reveal. | **Unmeasured.** Script places it at the wallpaper/rock beat; no timecode published. |
| 8 | **"Blink"** — cellar light-flicker | Sally and Larry back to the TARDIS; the fourth Angel points at the bulb and the light begins to flicker, dim, strobe. | On each flicker the Angels are closer, in new poses with claws and teeth out. | **New pose per cut.** The stage directions deliberately never show transit; Wikipedia records that the script called for only the result of movement to be shown. | The bulb's buzz and flicker, then a "big thoom" on the earlier blink reveal; the light itself is the cue. | **Unmeasured.** Edited as a strobe sequence; TV Tropes files it as "light-flicker teleportation". Record: flicker count and the time between flickers, since that is the real interval budget. |
| 9 | **"Blink"** — final advance | The same sequence at its tightest, ending as the TARDIS door opens and shuts. | Repeated advances, one per dark gap, until they are at the door. | **New pose per cut**, no continuous motion at any point. | Flicker, strobe, door, then the TARDIS lock. | **Unmeasured.** Sequence was shortened in the edit per Moffat's commentary, so any published runtime would describe a cut version. |

Two things to keep out of this table: *SCP: Secret Laboratory* is a different game and its numbers (a 3.0 s blink countdown, an 8 m marker, 12.5 m teleport) do not describe Containment Breach; and FNAF belongs to the moves-when-unseen note, not here.

## Measurement protocol

For each row, record on the same timeline (seconds from the last moment the figure is fully visible):

1. **t_last_seen** — last frame with the figure in view, unfrozen.
2. **t_return** — first frame with it back in view.
3. **Displacement** — in body-lengths, not metres: head-height units are comparable across games and film. Note whether the figure moved along the view axis (toward camera) or laterally.
4. **Shown or new pose** — is any of the transit on screen? If yes, how many frames?
5. **Audio** — the cue that plays during the gap, if any, and whether it starts before or after the move.
6. **Repeat count** — how many breaks before the figure reaches contact range. That number, not the metres, is what sets the pacing.

Footage to use, all public: the *Beginning Hour* demo attic (rows 1–2); the Shadows of Rose DLC Study-to-Bedroom run and the fuse return (rows 3–4); any Containment Breach 173 encounter with the blink bar visible (rows 5–6); "Blink", series 3 episode 10, the garden-rock beat and the cellar sequence (rows 7–9). Count frames at the source's native rate and note the rate, because a 60 fps capture and a 25 fps episode are not comparable frame counts.

## What the sheet already says about design

- **Nobody shows the transit.** All four use the viewer's own cut — a turn, a blink, a flicker — as the edit. Rows 1, 5, 7 and 8 are the same trick at different budgets.
- **Audio is the only evidence of movement.** Stone scraping (5–6), footsteps and squeaking (3–4), a bulb and a thoom (8). Where there is no sound, the scare is a pose swap on return (1–2).
- **The interval is a ration, not a delay.** Containment Breach puts the clock in the HUD (~4–5 s per bar) and makes the player spend it; Shadows of Rose lets the player choose when to spend it by looking away; RE7 charges nothing and still lands, because the player looked away voluntarily.
- **Repeat count sets difficulty, not distance.** Containment Breach needs several blinks to close; Shadows of Rose needs a handful of look-aways through three rooms. A house game should decide the count first and derive the step size from the room.
- **Conflicting reports are data.** The "not super fast" versus "very fast" split for Shadows of Rose suggests the perceived speed depends on the player's route and the frame rate — some players report the chase is harder above 60 fps. Worth pinning before copying the pacing.

## Still open

Every timing cell marked unmeasured above. Nothing in this sheet should be quoted as a timestamp until someone runs the protocol against the listed footage; the sourced numbers are the blink interval (secondary, approximate) and the structural facts (shown versus new pose, audio cue, sequence position), which do not depend on a stopwatch.

## Sources

- [Resident Evil 7 demo mannequins](https://gamerant.com/best-mannequin-scares-horror-games), Game Rant, 28 March 2023 — the attic trio facing the wall, and the turn-back reveal.
- [Resident Evil: 10 terrifying secrets](https://whatculture.com/gaming/resident-evil-10-terrifying-secrets-amp-easter-eggs-you-need-to-see?page=5), WhatCulture, 20 March 2020 — "about ten minutes into the demo", the fourth mannequin at the stairs, and the absence of any stinger or camera move.
- [Shadows of Rose House walkthrough](https://www.thegamer.com/resident-evil-village-shadows-of-rose-house-walkthrough-puzzles-guide), TheGamer, 9 November 2022 — gaze freezes the mannequin, looking away lets it move, "not super fast".
- [House Beneviento walkthrough](https://www.neoseeker.com/resident-evil-village/DLC/House_DLC), Neoseeker — the four-doll return leg and the conflicting "very fast" description.
- [Shadows of Rose: House walkthrough](https://game8.co/games/resident-evil-village/archives/523539), Game8, 30 May 2025 — looking freezes, looking away advances, and the final door-blocking mannequin that must be baited aside.
- [Resident Evil Village's baby scene has a worthy successor](https://gamerant.com/resident-evil-village-baby-scene-scary-successor-shadows-of-rose), Game Rant, 1 November 2022 — loud rapid footsteps off-screen and the stuttered walk on re-entry.
- [SCP-173](https://scpcb.fandom.com/wiki/SCP-173), Official SCP – Containment Breach Wiki — moves only when unobserved, "significantly closer" on a break in eye contact, opens doors, stone-scraping audio.
- [Game mechanics](https://containmentbreach.fandom.com/wiki/Game_Mechanics), SCP – Containment Breach Wiki — the blink bar, forced blink, manual blink and holding the eyes shut.
- [SCP – Containment Breach](https://en.wikipedia.org/wiki/SCP_%E2%80%93_Containment_Breach), Wikipedia — the depleting blink meter and 173's rapid advance between blinks.
- [Design elements in horror: SCP Containment Breach](https://fistfulofwits.com/2013/04/23/design-elements-in-horror-scp-containment-breach), Fistful of Wits, 23 April 2013 — the approximate "blink timer of about 4-5 seconds"; secondary and unverified.
- [Blink shooting script](https://bbclatestnews.pages.dev/writers/documents/doctor-who-s3-ep10-blink-steven-moffat.pdf), Steven Moffat, BBC Writersroom — the blink/thoom reveal and the cellar light sequence.
- [Blink (TV story)](https://tardis.wiki/wiki/Blink_(TV_story)), Tardis Wiki — "with each flicker, the Angels move towards Sally and Larry".
- [Weeping Angel](https://en.wikipedia.org/wiki/Weeping_Angel), Wikipedia — stage directions that the Angels were never to be seen moving, only the result of movement.
- [12 details in Moffat's Blink commentary](https://whatculture.com/tv/doctor-who-12-cool-details-revealed-in-steven-moffats-blink-commentary), WhatCulture, 11 June 2020 — the Angel threw the rock, and the cellar sequence was shortened in the edit.
- [Do Doctor Who's Weeping Angels still terrify?](https://www.avclub.com/do-doctor-who-s-weeping-angels-still-terrify-1798240967), The A.V. Club, 2 October 2013 — we never see them move; a cut or a fade and the statue has shifted.
- [Doctor Who S29 E10 "Blink" recap](https://tvtropes.org/pmwiki/pmwiki.php/Recap/DoctorWhoS29E10Blink), TV Tropes — "light-flicker teleportation" as the cellar mechanic.
- [Shadows of Rose mannequin chase thread](https://steamcommunity.com/app/1196590/discussions/0/3469487093573920107), Steam Community, 29 October 2022 — player reports that the chase is tighter above 60 fps.
