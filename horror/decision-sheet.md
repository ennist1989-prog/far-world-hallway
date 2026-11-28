# Lock spec — decision sheet

**For:** Thomas · **Date:** 28 November 2026 · **Status:** open — `lock-spec.md` is unchanged and remains a proposal until these six are answered.

Answer each with a letter, or write the change. "Flips" means the §11 worked case would change verdict. Under the recommended answers every verdict survives; only case 5's duration moves (see D5).

## D1 — Head anchor

**Question:** Lock on the head, or require the whole silhouette?
**Answer:** ☐ A ☐ B ☐ change: __________

- **A (recommended):** head anchor; a body in plain view with the head hidden is released.
- **B:** the whole silhouette must be visible.
- **Effect:** B flips cases 2 and 12 to Seen and removes the peek-a-boo beat. A keeps 2, 11 and 12; §8's movement limits remain essential.

## D2 — Unlit silhouettes

**Question:** Does a readable dark silhouette hold a figure, or only the beam?
**Answer:** ☐ A ☐ B ☐ change: __________

- **A (recommended):** S2 holds; a head the player could identify against a lit doorway or dim wall counts.
- **B:** only the beam holds.
- **Effect:** B flips case 3 to Not seen and makes unlit rooms free movement. A keeps 3 and 4, but "distinguishable" needs a contrast floor or a fixed test display, or case 3 can fail on a dark screen.

## D3 — Per-figure or stage rule

**Question:** Do figures move independently, or does the house freeze while any figure is seen?
**Answer:** ☐ A ☐ B ☐ change: __________

- **A (recommended):** per-figure; stagger one mover per release window.
- **B:** stage rule — any figure seen holds the whole house.
- **Effect:** B flips case 13 and removes flanking. A keeps 13. If A, also say whether a figure that loses the stagger race waits for a later window or loses its move.

## D4 — Reflections

**Question:** Do mirrors hold figures?
**Answer:** ☐ A ☐ B ☐ change: __________

- **A (recommended):** yes; a clean mirror is an observation channel, graded like any other surface.
- **B:** mirrors may lie.
- **Effect:** B flips case 7 and makes mirrors ambush surfaces. A keeps 7 and 8. A mirror can hold a figure indefinitely until the stare-stall rule (brief 15) exists, so A makes mirrors a deliberate safe tactic, not an accidental exploit.

## D5 — Edge band and hysteresis

**Question:** How forgiving is the edge of frame?
**Answer:** ☐ A ☐ B ☐ change: __________

- **A (recommended):** 10% band; 0.15 s to hold, 0.45 s to release — fast freeze when the head comes back, slow release when it drifts out.
- **B:** keep 0.3 s both ways (the current text).
- **Effect:** no verdict flips. A changes case 5's duration from 0.3 s to 0.45 s and contradicts §5's "same delay applies going the other way"; both sentences must be rewritten if you choose A. B needs no text change.

## D6 — Near-field override

**Question:** Keep the anti-step-through lock at arm's length?
**Answer:** ☐ A ☐ B ☐ C ☐ change: __________

- **A (recommended):** keep at 1.5 m, distance-only: any figure within 1.5 m on the player's front side is held, regardless of camera pitch or frustum. There is no cone. "Front side" is the way the body faces, not where the camera is aimed, so looking at the ceiling does not release a figure at your feet. The override replaces the frustum test only: occlusion, glass grading and the S2 distinguishability clause still apply, so a head behind a coat, behind frosted glass or behind a door stays released even at 1 m.
- **B:** same rule at 1.2 m.
- **C:** drop it.
- **Effect:** A keeps case 6 (1 m away, looking at the ceiling) and, through the scope clause, cases 2, 10 and 12. The earlier ±60° view-axis cone flips 6; a full 360° radius can flip 13 if the figure behind the player is within 1.5 m. B keeps every case but weakens the guarantee between 1.2 m and 1.5 m. C flips 6.

**Scope clause for §5 (with D6-A):** "The near-field override replaces the frustum test only. Occlusion, glass grading and the distinguishability clause still apply: a head behind cover, behind frosted glass or behind a door is not held merely because the figure is close."

## Text that moves with the answers

- **D5-A** rewrites §5's symmetry sentence and case 5's 0.3 s → 0.45 s.
- **D6-A** adds the scope clause to §5 and defines "front hemisphere" as the side of the player's body, not the camera's aim.
- **The rejected alternatives** (D1-B, D2-B, D3-B, D4-B, D6-C) each invalidate the cases named above, so they need the spec edited, not only the decision recorded.

**Test-list caveat:** cases 2, 5, 10 and 12 give no distance. The D6-A scope clause keeps 2, 10 and 12 correct at any range; case 5 assumes the figure is outside 1.5 m, so add a distance (for example 3 m) when it becomes a test.

**When answered:** Freebuff appends a dated Decisions section to `lock-spec.md`, removes the proposal line, regenerates `mirror-manifest.txt` and mirrors both repos.
