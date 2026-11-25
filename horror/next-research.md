# Next research

Ready-to-assign briefs. These are follow-ups, not ground-up surveys: Freebuff's seven topic notes plus Hex's review and the moves-when-unseen addendum are the baseline. Do not rebuild those files. Do not start game code or prototypes.

The horror folder currently lives in `ennist1989-prog/far-world-hallway` on `main`, not in private `far-world`. Briefs below assume that stays true until Thomas says otherwise.

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
