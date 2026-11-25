# Hex review of Freebuff's horror notes

**Summary (three sentences).**
Freebuff's seven topic notes are a usable index of Thomas's original brief — Amnesia, Resident Evil 7, Outlast, the Backrooms lineage, Dark Souls statues, folk-horror visuals, and mannequin horror — and a Hex spot-check of 24 source links found them all live, with release years and core mechanics mostly accurate. The packet landed in the public `far-world-hallway` repo rather than private `far-world`, and it is thin on the mechanic the mannequin house actually turns on: figures that move when the player looks away, plus flashlight-only lighting, scare pacing, and a footage-review checklist. This file records corrections and flags without editing Freebuff's notes, then fills those gaps with claims checked against primary or first-party sources.

## Where the notes actually are

Freebuff (Codebuff, committing as `ennist1989-prog`) pushed the horror folder to [`ennist1989-prog/far-world-hallway`](https://github.com/ennist1989-prog/far-world-hallway) on the default branch `main`, not to the private design repo [`ennist1989-prog/far-world`](https://github.com/ennist1989-prog/far-world). The four commits, all on 24 November 2026, 11:36–11:45 PM America/New_York (25 November 2026, 04:36–04:45 UTC), are:

- [`69788e1`](https://github.com/ennist1989-prog/far-world-hallway/commit/69788e18b114fc7703f1f6112f879c94ad5a8a87) — add the seven topic notes
- [`b874d6a`](https://github.com/ennist1989-prog/far-world-hallway/commit/b874d6a9da095322ed9976945daa0e1ddcf86cbe) — add the index and per-topic sources
- [`8392473`](https://github.com/ennist1989-prog/far-world-hallway/commit/839247316f915db49b6d2221705a245a1efd66d7) — record the link check
- [`78d530d`](https://github.com/ennist1989-prog/far-world-hallway/commit/78d530dd7b1a8a3eeba6845792483c935e941534) — correct the source count to 52

`far-world` itself still has no `horror/` folder. Its default branch `main` last moved on 22 November 2026, 7:15 PM America/New_York (`23ed142`, "Add 3Blue1Brown gradient descent video link"). It has a single branch (`main`), no pull requests, and one open issue unrelated to horror ([#1](https://github.com/ennist1989-prog/far-world/issues/1), family character reference photos). `far-world-hallway` likewise has only `main` and no pull requests. An earlier Hex research pass left no stray branch, commit, or open PR touching horror notes in either repo. Nothing was merged or deleted.

`tasks/freebuff-results.md` in `lantern-night` has no entry for this horror research. The existing results there cover Lantern Night tooling, Steam tag snapshots, and related queue work only.

Freebuff's coverage, in short: one note each for Amnesia, RE7, Outlast, Escape/Inside the Backrooms (with Kane Parsons's found-footage series in the top three), Dark Souls statue and item-text language, occult/folk-horror visuals, and mannequin horror (Tourist Trap, "The After Hours," Condemned). The format is consistent. What it does not do, and what this review adds, is design-useful depth on look-away movement, flashlight-only dread, jump-scare timing versus sustained tension, or how to read the upcoming phone footage.

## Corrections and verification flags

Spot-check: 24 Freebuff citations were fetched and resolved to live pages, including several publishers the README warns may return HTTP 403 to automated checks (GameSpot, The Guardian, Bloody Disgusting, Destructoid, TechRaptor, wiki.gg). No dead link turned up in the sample. Factual checks focused on release years, developers, mechanics, and enemy behaviour. Flags below are things that are wrong, overstated, thinly sourced, or missing — not a request to rewrite Freebuff's files.

| File | Claim | Issue | Source |
| --- | --- | --- | --- |
| `dark-souls-statues-and-storytelling.md` | Dark Souls (2011) is "the foundational text, where a statue is scenery until it is not." | Overstated for Dark Souls 1 specifically. The file's own sources are almost all Dark Souls II: Masked Manikins, the Belfry Gargoyle soul text, and Scholar of the First Sin Royal Knight statues. The DS1 source in the list is the Mimic, which is a chest, not a statue. The "comes to life when you walk past" language is verified for Scholar's Drangleic Castle ("Six Royal Knight statues have been added near the entrance, and 3 of them can come to life") and for the Gargoyle soul ("The elaborate stone statues on the belfry mysteriously came to life"), not demonstrated here for 2011. | [Scholar of the First Sin changes](http://darksouls2.wikidot.com/scholar-of-the-first-sin); [Belfry Gargoyles](http://darksouls2.wikidot.com/bosses:belfry-gargoyles); [Mimic](http://darksouls.wikidot.com/mimic) |
| `mannequin-horror.md` | Condemned's mannequins "move when you are not looking," and "some of the figures are simply enemies standing very still." | Half-right, slightly too strong. The cited TechRaptor piece says mannequins in Bart's Department Store "appear to move around," enemies pose among them, and a player "might question if a given figure is exactly where they've last seen it." Game Rant (cited in the same file) describes mannequins that turn to look, follow, reappear, and multiply, plus enemies charging from cover. That supports ambiguity and off-screen change. It does not, in those sources, establish a hard Weeping-Angel / SCP-173 rule that the figures are locked while watched. | [TechRaptor](https://techraptor.net/gaming/features/what-makes-monster-horror); [Game Rant](https://gamerant.com/best-mannequin-scares-horror-games) |
| `backrooms-games.md` | Inside the Backrooms uses "randomized solutions that force a group to split up and report back." | The randomization is confirmed first-party: Steam says puzzle solutions change each new game, and puzzles are designed to be solved "both individually and cooperatively." "Force a group to split up and report back" is an inference, and the original citation was a third-party comparison site (`escapethebackrooms.org`). Use the Steam page for this claim going forward. The game is still listed as Early Access; developer is MrFatcat; release is 20 June 2022. | [Inside the Backrooms on Steam](https://store.steampowered.com/app/1987080/Inside_the_Backrooms/) |
| `amnesia-the-dark-descent.md` | Low sanity brings "swaying vision, breathing and insects." | Verified, not a correction. IGN describes the scene shifting "like the webs of light across sands under shallow water as sounds intensify, controls are muddied, and eventually insects crawl across your field of vision." Wikipedia, also cited, is more generic ("visual and auditory hallucinations") and does not name insects; the IGN citation is the one that carries this detail. | [IGN review](https://www.ign.com/articles/2010/09/03/amnesia-the-dark-descent-review) |
| `resident-evil-7.md` / `mannequin-horror.md` | RE7 is framed as domestic first-person dread; mannequins appear only as "decapitated mannequin props" in the Harvard Crimson source. | Not wrong, but a gap inside a cited topic. Game Rant documents a look-away beat in the RE7 demo: armless mannequins face the wall, then face the player after the player turns away. The same article documents a true "moves when unseen" sequence in Resident Evil Village's Shadows of Rose DLC (House Beneviento, a Red Light, Green Light chase with the Mia mannequin). Neither beat is in Freebuff's notes. | [Game Rant](https://gamerant.com/best-mannequin-scares-horror-games); [Harvard Crimson](https://www.thecrimson.com/article/2017/2/25/residentevil_7/) |
| README.md | "All 52 source links… resolve to live pages." | Supported by this sample: 24 fetched URLs were live, including GameSpot, Guardian, Destructoid, Bloody Disgusting, TechRaptor, and wiki.gg. The README's 403 warning is still useful for scripted checks. This is not a full re-audit of all 52. | Hex fetch, 24–25 November 2026, America/New_York |

No direct contradiction turned up between the seven topic files on release years or studio credits. Verified dates and facts that held:

- Amnesia: The Dark Descent — Frictional Games, 8 September 2010. Sanity drains in darkness and from looking at monsters; finite lamp oil and tinderboxes; unkillable, evadable monsters; hiding in the dark also drains sanity. ([Wikipedia](https://en.wikipedia.org/wiki/Amnesia:_The_Dark_Descent); [Thomas Grip, Game Developer](https://www.gamedeveloper.com/design/game-design-deep-dive-i-amnesia-i-s-sanity-meter-); [Vice](https://www.vice.com/en/article/sheppards-video-game-pie-amnesia-the-dark-descent))
- Resident Evil 7: Biohazard — Capcom, 2017. First-person, Baker house, scarce resources, safe rooms, domestic framing. P.T. (2014) and Layers of Fear (2016) dates in the top three are standard and were not independently re-dated this pass beyond being consistent with the surrounding reviews.
- Outlast — Red Barrels, 4 September 2013. No combat; camcorder night vision drains batteries; hide, flee, slam doors. Philippe Morin: "a stealth game in a horror setting," where being spotted starts a chase, not a firefight. ([Kill Screen](https://www.killscreen.com/how-outlast-plays-realest-terror-them-all-adulthood); [Destructoid](https://www.destructoid.com/reviews/review-outlast))
- Escape the Backrooms — early access 11 August 2022, Windows 1.0 on 23 October 2025 (the "2022–2025" span is fair). Fancy Games and Blackbird Interactive; published by Secret Mode. Up to four players, 30+ levels, proximity voice chat, entities that can hear you, every teammate must reach the exit ("No wanderer left behind"), flashlight and almond water, sanity hallucinations below 15%. ([Steam](https://store.steampowered.com/app/1943950/Escape_the_Backrooms); [Wikipedia](https://en.wikipedia.org/wiki/Escape_the_Backrooms); [GameSpot review](https://www.gamespot.com/reviews/escape-the-backrooms-review/1900-6418431/))
- Kane Parsons (the name Freebuff uses) is the filmmaker known as Kane Pixels. *The Backrooms (Found Footage)* began in 2022; that is the visual grammar the games borrow. ([Wikipedia](https://en.wikipedia.org/wiki/Escape_the_Backrooms); [The Guardian, 27 July 2026](https://www.theguardian.com/games/2026/jul/27/video-games-obsessed-backrooms))
- Dark Souls II Masked Manikins — item text describes advanced puppets given life by the Baneful Queen, faces torn off; they "tend to ambush"; locations include Harvest Valley, Earthen Peak, and Drangleic Castle. ([wikidot](http://darksouls2.wikidot.com/manikin); [wiki.gg](https://darksouls2.wiki.gg/wiki/Masked_Manikin))
- Tourist Trap (1979), *The Twilight Zone* "The After Hours" (1960), and Condemned: Criminal Origins (2005) are correctly dated in the mannequin note.

## Gap-fill and deeper research

Design-useful depth on the missing mechanic, on flashlight-only vision, and on scare timing is in [moves-when-unseen.md](moves-when-unseen.md) and in the sections below. Only verified claims are cited.

### Flashlight-only lighting and dread pacing

The mannequin concept is first-person and flashlight-only in a real dark house. The closest verified analogues in Freebuff's packet are Amnesia's lantern/tinderbox economy and Outlast's battery-powered night vision — both make *seeing* a consumable.

In Amnesia, light restores sanity and darkness drains it, but a lit lantern also makes Daniel easier to spot, and the best hiding places are the same shadows that unmake him. Oil is the mobile light; tinderboxes make standing pools of light you can retreat to — and later have to stay away from if a monster is hunting you. ([Vice](https://www.vice.com/en/article/sheppards-video-game-pie-amnesia-the-dark-descent); [Grip, Game Developer](https://www.gamedeveloper.com/design/game-design-deep-dive-i-amnesia-i-s-sanity-meter-)) Grip's original "darkness as the only enemy" prototype failed because forcing light-and-shadow to be a pure puzzle ruined the look of the rooms; sanity was the compromise that let darkness stay atmospheric *and* mechanical. For a house lit only by a phone-like flashlight, the useful takeaway is: the cone should feel scarce and directional, not like a room light, and any "safe" pool of light the player creates should also be a place they can be seen.

Outlast goes further: pitch-black corridors are unreadable without night vision, night vision burns batteries, and "the device always seems to run out at the most inopportune moments." With the camcorder on, the player can watch a pursuer hunt in the dark that the pursuer cannot see into — until the battery dies. ([Destructoid](https://www.destructoid.com/reviews/review-outlast)) That is the closest published description to flashlight-only dread: sight is a ration, darkness is default, and running out of light is worse than running out of a weapon, because there is no weapon.

RE7's flashlight, as Freebuff notes, "carves a cone rather than lighting a room." The Harvard Crimson review is the better source for what that cone *does* psychologically: first-person hides the edges of the room, so "threats can be suggested almost in every dark corner," and "the mere horror of suggestion — the implied presence" does more than a visible monster. The same review describes defamiliarizing a house that had started to feel known. That maps directly onto walking a real house with a flashlight: the beam should create blind spots behind the player and just off the edge of the cone, not flood the set.

Escape the Backrooms and Inside the Backrooms both include flashlights, but GameSpot's review of Escape is a warning, not a model: chases start so fast that the player rarely gets to soak the empty rooms, which is "the setting's strongest aspect." A mannequin house that is only flashlight and stillness should not inherit that "monster within a minute of leaving a safe space" loop.

Practical implications for the concept:

- Treat battery, flicker, or a narrow cone as a resource, in the Outlast/Amnesia sense, not as a full-bright torch.
- Let the beam edge, not a jump scare, do the first reveals: a torso, a hand, a face that might be plastic.
- Do not fill every dark room with a mover. Empty rooms that stay empty are how the later movement becomes unbelievable.
- Safe light (a lamp the player turns on, a fridge glow, a TV) should feel like Amnesia's lit candles: relief that also marks the player.

### Jump-scare timing versus sustained tension

Thomas Grip, writing after Amnesia, is blunt: a game that "only relies on jumpscares" is "figuratively throwing people off a cliff in a barrel," and few people find that fun. Penumbra maps that were just a maze plus monsters became "mostly… annoying." Amnesia's own late monster encounters, unsupported by anything else, stopped feeling entertaining. ([Frictional Games, "9 Years, 9 Lessons on Horror," 15 October 2019](https://frictionalgames.com/2019-10-9-years-9-lessons-on-horror/))

Lesson 3 in the same essay is the one to steal. Grip points at *Alien*, *The Exorcist*, and *Ringu*: very different films, "very few scares," most of the runtime spent on "the anticipation of the horror — building up the atmosphere and the dread of things to come." When Frictional first built Amnesia's study, they packed it with jump scares — falling books, banging doors, a piano. It felt off. They cut the scares down to a couple and spent the time on the castle's mysteries. "Spacing the scares apart made players much more scared than previously."

That is the timing brief for both the game and the phone footage: linger, then move one thing, then linger longer. A ten-second hold on a single figure is already in Thomas's shooting plan; Grip's study example says those holds will do more than a stack of sudden moves.

Two related Grip points, also verified in that essay and in his 2014 Game Developer interview:

- Players work against you. They will optimize the fear away if the system is too readable. Keep the look-away rule legible enough to be fair, and vague enough that the player cannot treat the house like a solved puzzle. ("A vague and uncertain game system is like a creepy photo.")
- Let the player scare themselves. Grip describes entering *Slender: The Arrival* and projecting the myth onto rustling leaves before anything happens: "it was all just me scaring myself — no mechanics." ([Game Developer, 8 May 2014](https://www.gamedeveloper.com/design/four-ways-to-design-for-horror-from-i-amnesia-i-dev-frictional-games)) A dark house full of still mannequins is that kind of projector. The first passes should give the player's memory something to get wrong.

Freebuff's Outlast and RE7 notes already hint at the same pacing from the other direction: Outlast "is also treacherous and untrustworthy" — sometimes silence is a trap, "then sometimes nothing will happen" (Destructoid). RE7, the Crimson review argues, goes off when it overstays and turns into an action obstacle course. Sustained tension has a shelf life; the answer is not more jump scares, it is knowing when to stop.

### How this applies to the mannequin house

The concept — first-person, flashlight-only, a real dark house, figures that come alive when the player's back is turned — is closer to *Blink*, SCP-173, the RE7 demo look-away, and Shadows of Rose than it is to Dark Souls ambushes or Backrooms co-op chases. The useful borrowed rules, all sourced in [moves-when-unseen.md](moves-when-unseen.md):

1. **Stillness must be the default, and it must be convincing.** Weeping Angels are "quantum locked" and become stone when seen; SCP-173 "cannot move while within a direct line of sight." If a figure fidgets while watched, the spell breaks.
2. **The scare is the player's choice to look away, plus doubt about memory.** Freebuff already has this sentence in the mannequin note ("the player is the one who chose to look away"). It is the right sentence. Build around noticing, doubting, then confirming.
3. **Off-screen sound can do work the camera cannot.** SCP-173's article treats scraping stone in an empty cell as normal. A floorboard or a scrape behind the player is more honest than a stinger.
4. **Not every figure should be a mover.** Condemned and *I'm on Observation Duty* get threat from not knowing which change matters. Silent Hill 2's Mannequins stand still in the open, do not trip the radio until they move, and spring only when James gets close — a different rule (proximity, not gaze), useful as a second species of figure in the same house.
5. **Flashlight is both the lock and the blindfold.** The beam holds whatever it lands on. Everything outside the cone is unobserved. That is the mechanic, and it is already in the player's hands.
6. **Do not start with a chase.** Grip and the GameSpot Backrooms review both argue that constant pursuit flattens the rooms. Let the house and the doubt lead; movement is the confirmation, not the opening offer.

### Phone footage review checklist

Thomas's plan: shoot on a phone — slow passes through rooms, light sweeps across figures, and ten-second still shots on single mannequins. When that video lands in the repo, Hex should review it against this list (atmosphere and timing only; no build notes).

**Pass and body**

- [ ] Walking pace feels human, not steadicam-slick and not handheld-chaotic. A slight weight on each step is better than a glide.
- [ ] The camera height matches a person holding a phone or a flashlight at chest or face height, not a floating eyeline.
- [ ] Turns are committed: when the frame leaves a figure, it really loses them. Glancing back too early wastes the look-away.
- [ ] At least one slow pass through a room where *nothing* is wrong, so later passes have a baseline. (This matches Cine's existing corridor note in `far-world` design: open by teaching what normal looks like.)

**Light**

- [ ] The beam is a cone. Walls and figures fall off into real darkness at the edges; the room is not secretly filled with bounce light.
- [ ] Sweeps reveal in pieces (a hand, a dress, a face) rather than landing on a complete, lit figure every time.
- [ ] Material reads under the beam: matte plastic versus skin, dusty hair, a seam, a joint, a glass eye. If everything looks like a costume in a lit garage, the uncanny will not land.
- [ ] After a sweep leaves a figure, the residual dark still has a silhouette or a doubt, not a hard cut to black.
- [ ] No strobing, rapid flicker, or flash-frame hits. Far World's hallway pilot already tightened photosensitivity; this footage should stay in that discipline.

**The ten-second stills**

- [ ] Ten seconds is a hold, not a pause before a scare. If a move happens, it should be late, small, or not on the first still at all.
- [ ] Watch for accidental micro-movement (a wobble, a breeze, a puppeteer settle) that would break a "locked while seen" rule.
- [ ] The frame should give the viewer something to memorize: exact posture, which way the face is turned, distance from a doorframe. The next shot's job is to make that memory feel untrustworthy.
- [ ] After the light first lands on a face, hold. Do not immediately search for a better angle.

**Timing and sound (even if the temp track is silence)**

- [ ] Gaps between events are irregular. One beat should be a long nothing. Grip: spacing scares apart made players more scared, not less.
- [ ] No sting on first sight of a mannequin. First sight should feel like furniture.
- [ ] If sound is present, prefer house sound and, at most, a scrape or creak off-screen over a musical hit. Official SCP-173 text treats scraping stone as the thing you hear when no one is looking.
- [ ] Jump cuts that "teleport" a figure between frames will read as a trick unless the footage is explicitly testing an off-screen move. If it is, the preceding hold has to establish the old position clearly.

**Domestic wrongness**

- [ ] The house still looks like a house: photographs, a kitchen, a hallway, not a dressed haunted attraction.
- [ ] Handmade-and-wrong details, if any, are small (a stitched face slightly off, a veil, a candle, a mark at a threshold) and do not announce a ritual set.
- [ ] Figures are placed where a person or a store dummy might actually stand, then slightly wrong (facing a wall, too close to a bed, watching a doorway).

**What to write up when the file arrives**

- Timestamped notes on the three shot types (pass, sweep, still), what landed, what broke stillness or timing, and which shots could be reference for the game's flashlight cone and look-away confirms.
- A short "do / don't" list for the next shoot, if one is needed.

## Sources (Hex only)

Sources already listed in Freebuff's topic files are not repeated unless they back a flag above. Additional sources used in this review:

- Thomas Grip, ["Game Design Deep Dive: Amnesia's 'Sanity Meter'"](https://www.gamedeveloper.com/design/game-design-deep-dive-i-amnesia-i-s-sanity-meter-), Game Developer, 27 August 2014.
- Thomas Grip, ["9 Years, 9 Lessons on Horror"](https://frictionalgames.com/2019-10-9-years-9-lessons-on-horror/), Frictional Games, 15 October 2019.
- Kris Graft, ["Four ways to design for horror, from Amnesia dev Frictional Games"](https://www.gamedeveloper.com/design/four-ways-to-design-for-horror-from-i-amnesia-i-dev-frictional-games), Game Developer, 8 May 2014.
- Charles Onyett, [Amnesia: The Dark Descent review](https://www.ign.com/articles/2010/09/03/amnesia-the-dark-descent-review), IGN, 3 September 2010 (updated 6 May 2012).
- [Inside the Backrooms](https://store.steampowered.com/app/1987080/Inside_the_Backrooms/), Steam (MrFatcat, 20 June 2022).
- [I'm on Observation Duty](https://store.steampowered.com/app/1046820/Im_on_Observation_Duty/), Steam (Notovia, 14 December 2018).
- [SCP-173](https://scp-wiki.wikidot.com/scp-173), SCP Wiki, by Moto42, licensed CC BY-SA.
- [SCP – Containment Breach](https://en.wikipedia.org/wiki/SCP_%E2%80%93_Containment_Breach), Wikipedia (released 15 April 2012; Joonas "Regalis" Rikkonen).
- [Blink](https://www.bbc.co.uk/programmes/b0074gpl), BBC One, Doctor Who Series 3 Episode 10, first broadcast 9 June 2007; [shooting script](https://www.bbc.co.uk/writersroom/documents/doctor-who-s3-ep10-blink-steven-moffat.pdf), Steven Moffat, BBC Writersroom.
- [Five Nights at Freddy's](https://en.wikipedia.org/wiki/Five_Nights_at_Freddy%27s_(video_game)), Wikipedia (Scott Cawthon, 8 August 2014).
- StrategyWiki, [Silent Hill / Monsters](https://strategywiki.org/wiki/Silent_Hill/Monsters), citing Konami, *Book of Lost Memories* (2003), Silent Hill 2 creature commentary.
