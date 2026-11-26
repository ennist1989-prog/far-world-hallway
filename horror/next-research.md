# Next research

Ready-to-assign briefs. These are follow-ups, not ground-up surveys: Freebuff's seven topic notes plus Hex's review and the moves-when-unseen addendum are the baseline. Do not rebuild those files. Do not start game code or prototypes.

The horror folder lives in both `ennist1989-prog/far-world-hallway` and the private `ennist1989-prog/far-world`, mirrored byte for byte at `horror/` in each. Write to both, or to one and mirror it at once; do not let the two copies diverge.

## P0 — unblocks the rest

### 1. Point the design repo at these notes
- **Why:** Bots and Thomas were told the packet would be in `far-world`. It is in `far-world-hallway`. Anyone opening the design repo will miss it.
- **Owner:** Freebuff
- **Size:** S (one short pointer file or README link in `far-world`; do not duplicate the whole folder unless Thomas asks)
- **Brief:** Add a clearly titled pointer in `ennist1989-prog/far-world` (for example `notes/horror.md` or a line in the root README) that links to `https://github.com/ennist1989-prog/far-world-hallway/tree/main/horror` and names the Hex files (`hex-review.md`, `moves-when-unseen.md`, `next-research.md`). Do not move or delete the hallway copies without Thomas.

### 2. Log the work in the Freebuff results file
- **Why:** Team protocol is to read `tasks/freebuff-results.md` in `lantern-night` instead of pinging Thomas. This research has no entry there.
- **Owner:** Freebuff
- **Size:** S
- **Brief:** Append one dated entry (task ref, status: done, repo + commit URLs, one-paragraph result). Do not edit earlier entries.

## P1 — design-critical, still research only

### 3. Timed look-away reference sheet
- **Why:** The concept lives or dies on how long a figure may move, how far, and what the player is allowed to see of that move. Hex confirmed the rules, not the timings.
- **Owner:** Freebuff
- **Size:** M
- **Brief:** From publicly available footage or a playthrough, log timestamps for: the RE7 demo mannequins that turn after the player looks away; Shadows of Rose's House Beneviento Red Light, Green Light sequence; a *Containment Breach* SCP-173 encounter (blink interval, close rate, scrape); and, if footage is legally handy, the first Angel advance in "Blink." For each, note start/end, distance moved, whether motion is shown or only a new pose, and any audio tell. Deliver a one-page table in `horror/`, do not overwrite existing notes.

### 4. Condemned Bart's Department Store — exact behaviour
- **Why:** Freebuff's "move when you are not looking" is slightly stronger than the cited articles. The level is still the best game analogue for "which of these is furniture."
- **Owner:** Freebuff
- **Size:** M
- **Brief:** Watch or play the Bart's Department Store section of *Condemned: Criminal Origins* (2005) and write a short behaviour sheet: which figures actually relocate, whether relocation is gated on the camera, how enemies mix into the displays, and what the follow/multiply beat does. Flag anything that is a scripted set piece versus a systemic rule. Add the sheet as a new subsection or a small companion file; leave `mannequin-horror.md` intact.
- **Status (26 Nov 2026): partly done.** The sheet exists — `horror/condemned-barts-behaviour-sheet.md`, built from the GameFAQs guides, Rely on Horror and Uppercut, with the scripted-versus-systemic split called out. Nothing in it came from playing the chapter, so the four checks at the end of the sheet are still outstanding: whether a mannequin will move while fully in frame, whether the reorder tableau is deterministic across reloads, how many living figures stand in each room, and what the walk speed actually measures. Close this brief once those four are answered and the sheet's verdicts are corrected against them.

### 5. Phone footage review (blocked)
- **Why:** Thomas already assigned Hex to review the reference video for atmosphere and timing once it is in the repo.
- **Owner:** Hex
- **Size:** M
- **Brief:** When the phone video lands, review it against the checklist in `horror/hex-review.md` (passes, light sweeps, ten-second stills). Deliver timestamped notes and a short do/don't list for a second shoot if needed. Do not start until the file is in the repo and Thomas or the team says it is there.

## P2 — specialist passes

### 6. VHS / liminal grammar for a real house
- **Why:** The Backrooms notes cover games and Kane Parsons, but not how to shoot a lived-in Toledo house so it feels like found tape without copying Async or yellow wallpaper.
- **Owner:** Vesper
- **Size:** M
- **Brief:** Watch Parsons's early *Backrooms* shorts and extract a short "do/don't" for phone footage: compression, noise, light falloff, how long a corridor hold can run, what to avoid so it does not read as a Backrooms clone. Apply it to a domestic interior, not an office liminal. One to two pages, link the exact videos.

### 7. Shot plan for the three camera verbs
- **Why:** The shoot is already specified (slow room passes, light sweeps, ten-second stills). It still needs direction so the footage can be used as timing reference.
- **Owner:** Cine
- **Size:** M
- **Brief:** Write a shot list and timing plan for one house session: order of rooms, how slow a pass should be, how a sweep should enter and leave a figure, how to hold a ten-second still, where to put the "nothing happens" pass, and how to stage a single off-screen change so the before/after is readable. Stay inside the checklist in `hex-review.md`. No game implementation.

### 8. Player psychology of looking away
- **Why:** The mechanic punishes a blink, a turn, and a dropped flashlight beam. That needs a player-comfort and photosensitivity read before anyone builds it.
- **Owner:** Mira
- **Size:** M
- **Brief:** Research brief on: gaze and being watched; the feeling of choosing to look away; tunnel vision under a flashlight; how forced-blink or flicker mechanics can fail accessibility (photosensitivity, motion, anxiety). Recommend what Hex should not ask a player to endure, and how to keep the Far World hallway's existing effects-intensity discipline. Cite sources. No code.

### 9. Art direction for real-house figures
- **Why:** The folk-horror note has the right vocabulary (candles, veils, handmade-wrong, liminal domestic) but no pass on what a mannequin should *be* in Thomas's house.
- **Owner:** Ember
- **Size:** M
- **Brief:** Material and placement guide: plastic versus wax versus fabric, seams and joints under a flashlight, clothing, faces that are blank versus slightly wrong, how many figures in a room, where they stand so they still look like they belong in a home. Keep sigils, candles, and veils small if used at all. Reference the occult note and Hex's footage checklist. Mood boards welcome; no asset production required unless Thomas asks.

### 10. Why these figures are in this house
- **Why:** Freebuff's mannequin note already names the theme (a human shape with the person subtracted; the fear of being displayed). It is not yet a story.
- **Owner:** Scribe
- **Size:** M
- **Brief:** A short story brief, not a script: whose house, why the figures are there, whether they used to be people, and what the player is to them. Stay compatible with look-away movement (no explanation that requires the figures to gesture while watched). Offer two or three options, with a recommendation. Keep it research/outline only.

### 11. Off-screen sound language
- **Why:** Official SCP-173 text treats scraping stone as the sound of movement in an empty cell; "The After Hours" is often discussed for how little music it uses. The footage and the game both need a sound rule before anyone scores a jump.
- **Owner:** Cine (with Vesper if tape hiss / room tone is in play)
- **Size:** S–M
- **Brief:** A one-page sound brief: default house tone, what (if anything) plays when a figure moves unseen, and a ban list (stingers on first sight, constant chase music). Cite the SCP-173 article and any "After Hours" / Outlast observations already in the folder. No audio production required.

## P3 — tidy-ups

### 12. Dark Souls 1 statue inventory
- **Why:** The DS1 "statue is scenery until it is not" line is looser than the DS2 evidence in the same file.
- **Owner:** Freebuff
- **Size:** S
- **Brief:** From play or a reliable source, list actual DS1 cases of statues, mimics, or still figures that become enemies, separate from DS2 Manikins and Royal Knight statues. Add a short correction note or a comment in a new Hex-style file; do not rewrite the existing Dark Souls note unless Thomas wants a patch.

### 13. Tone and reference boundaries
- **Why:** Weeping Angels are BBC-owned; SCP-173 is CC BY-SA (credit Moto42 / SCP Wiki if text is quoted); FNAF and Resident Evil are commercial IPs. The project should borrow rules, not costumes or dialogue.
- **Owner:** Scribe
- **Size:** S
- **Brief:** A short boundaries note: what can be learned from each reference, what should not be copied (Angel iconography, "Don't blink" wording, 173's specific sculpture, Fazbear branding). This is a taste/legal-caution memo for the team, not a formal legal opinion.

## Added 26 November 2026 — follow-ups to the lock spec

These came out of writing `horror/lock-spec.md`. Briefs 14–20 are ordered by what unblocks what: 14 is a decision, 15–18 each remove a different unknown, 19–20 are small and can run in parallel.

### 14. Adopt the lock spec
- **Why:** `lock-spec.md` states the rule, but six decisions in its §10 are Thomas's. Until they are answered, every other note keeps assuming a slightly different rule, which is how "camera-gated" ended up meaning two things across three files.
- **Owner:** Thomas (Freebuff records)
- **Size:** S
- **Brief:** Read `horror/lock-spec.md` §10 (D1–D6) and answer each accept/change. Freebuff then appends a "Decisions" section to the spec with the answers and the date, removes the PROPOSED status line, and mirrors the file. Nothing else in the folder changes until then; treat every rule in the spec as provisional.

### 15. Stare-stall and deadlock rules
- **Why:** If the player can hold a figure in view indefinitely, it can never reach them, and the mechanic becomes a staring contest with a corridor. This is the single design decision that determines whether looking is a tactic or a shield, and no note addresses it.
- **Owner:** Freebuff (options), Thomas (choice)
- **Size:** M
- **Brief:** One page of three or four anti-deadlock designs: (a) architecture forces look-aways — doors, corners, stairwells, darkness between lamps; (b) watching costs something — lamp drain, rising sound, a second figure moving in the blind spot; (c) watched figures still close slowly, so staring delays rather than shields; (d) some rooms simply cannot be cleared by staring. For each: what the player feels, how it interacts with `lock-spec.md` §8, and what it breaks. Recommend one. No code.

### 16. Blind-spot grammar — what the camera and beam actually cover
- **Why:** At a first-person field of view, "looking away" is mostly a side effect of turning a corner. How often the mechanic can fire at all depends on FOV, beam width and turn rate, and none of those numbers is written down anywhere in the packet.
- **Owner:** Cine (with Freebuff)
- **Size:** M
- **Brief:** For a plausible first-person setup, compute or measure: how much of a room leaves the frame per degree of turn at 2 m, 4 m and 6 m; the beam cone width at 1 m, 3 m and 5 m; how long a 90° and a 180° turn takes at walking pace; and the staging moments where a player genuinely loses a figure (doorway, threshold, corner, stair landing). Deliver a small table plus four to six staging rules, and cross-reference the angle notes in `hex-review.md`.

### 17. Human look-away field measurement
- **Why:** The timing budget is still unmeasured, and it can be measured without building anything. Every later tuning decision inherits whatever this produces.
- **Owner:** Thomas (with Hex)
- **Size:** M
- **Brief:** Put six to ten people through the house walk with figures staged, filmed on a phone. Log per person: mean look-away duration, how quickly they re-check, how often they turn fully around, how long before they notice a figure has changed, and what they say at the moment they notice. Same six-item protocol as `timed-look-away-reference-sheet.md`. Deliver a data table and three conclusions for timer values. No game build, no code.

### 18. Sightlines and floor-plan note
- **Why:** For a single-house game the pacing is set more by the floor plan than by the AI. After the lock spec, this is the highest-leverage document in the folder.
- **Owner:** Ember (with Cine)
- **Size:** M
- **Brief:** Room by room: how many sightlines the player holds at the doorway, where a figure can stand within 2 m and still be unseen, threshold and door-swing placement, mirror and glass positions, ceiling height and furniture that blocks. Produce a table of coverage per room, name three or four rooms that should carry the mechanic and one or two that should never, and tie each to the staging rules from brief 16. No build.

### 19. Teaching the rule without a HUD
- **Why:** The packet says nothing about onboarding, and the mechanic fails if the player reads the movement as random. A rule the player cannot learn is a bug they will report.
- **Owner:** Scribe (with Mira)
- **Size:** S–M
- **Brief:** A short onboarding design: the first figure should be caught almost mid-move; how long the doubt beat can hold; how many repetitions and rooms before it reads as a rule; what the player is told, if anything (nothing, a phone note, a mirror, repetition alone); and what to do when someone looked away honestly and the figure still moved, if that ever happens. Include a 60-second paper script of the first encounter.

### 20. Glossary and rule card
- **Why:** Terms drift between files — this week alone the folder header was stale and "camera-gated" meant two different things. A shared vocabulary is cheap and stops the next round of drift.
- **Owner:** Freebuff
- **Size:** S
- **Brief:** One file, `horror/glossary.md`: about fifteen terms — seen, held, released, lock, gap, doubt beat, displacement, touch, coverage, blind spot, authored beat, systemic beat, verification state, false positive, stage rule — each with a one-line definition and the file that owns it, plus a half-page rule card for artists and level designers. Definitions must match `lock-spec.md` once brief 14 is answered. Index it in the README and mirror it.

## Open items — mannequin video clip

- **Why:** `mannequin-video.md` in this folder records a Drive link, not a review. The clip is described as the first video snippet of a live recording, a close-up of mannequin horror gameplay, and nothing in it has been timed or checked.
- **Owner:** whoever watches the clip (Hex, unless Thomas reassigns it)
- **Size:** S
- **Brief:** When the clip is opened, answer these two against the protocol in `timed-look-away-reference-sheet.md` and write the answers into the sheet's row for the clip, then close this item.
  1. **The gap.** Between the last frame the figure is fully seen and the first frame it is seen again, how long is that gap — counted in frames and in seconds, at the clip's native frame rate?
  2. **What the gap shows.** Is any of the movement on screen during that gap, or is the figure simply in a new pose when it comes back into view? If movement is visible, how many frames of it?
- **Also note:** the audio cue during the gap, if there is one, alongside the two answers. Do not guess either answer from a description of the clip; both need the footage.
