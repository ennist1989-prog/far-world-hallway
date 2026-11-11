# Texture sources

All textures and paintings used in this pilot are real photo scans or public-domain art reproductions, or simple local derivatives of those scans (crop, grade, alpha extract, colour remap, geometric warp). None are AI-generated. 1K JPG maps (and a few pre-composited PNG decals derived from those scans) were used for `file://` load speed.

A v2 backup of the corridor immediately before Ember's art-direction pass is at `index-v2.html` and `v2-backup/` (sha 45408dcfdfa31197…). A v1 backup (before cracks/algae/paintings) remains at `index-v1.html` and `v1-backup/`. Unused earlier maps are kept on disk for the record and are marked below.

## Poly Haven — [CC0 license](https://polyhaven.com/license)

### Dirty Carpet
- Page: https://polyhaven.com/a/dirty_carpet
- Used as: damp corridor carpet
- Files:
  - https://dl.polyhaven.org/file/ph-assets/Textures/jpg/1k/dirty_carpet/dirty_carpet_diff_1k.jpg
  - https://dl.polyhaven.org/file/ph-assets/Textures/jpg/1k/dirty_carpet/dirty_carpet_nor_gl_1k.jpg
  - https://dl.polyhaven.org/file/ph-assets/Textures/jpg/1k/dirty_carpet/dirty_carpet_rough_1k.jpg
- Local: `textures/carpet_diff.jpg`, `carpet_nor.jpg`, `carpet_rough.jpg`

### Metal Plate
- Page: https://polyhaven.com/a/metal_plate
- Used as: metal AV cart (diamond plate)
- Files:
  - https://dl.polyhaven.org/file/ph-assets/Textures/jpg/1k/metal_plate/metal_plate_diff_1k.jpg
  - https://dl.polyhaven.org/file/ph-assets/Textures/jpg/1k/metal_plate/metal_plate_nor_gl_1k.jpg
  - https://dl.polyhaven.org/file/ph-assets/Textures/jpg/1k/metal_plate/metal_plate_rough_1k.jpg
- Local: `textures/metal_diff.jpg`, `metal_nor.jpg`, `metal_rough.jpg`

### Lacquered Cherry Wood
- Page: https://polyhaven.com/a/lacquered_cherry_wood
- License: CC0
- Used as: dark varnished wood / tarnished-gilt-adjacent frame moulding (colour-tinted in-engine toward gilt-brown)
- Files:
  - https://dl.polyhaven.org/file/ph-assets/Textures/jpg/1k/lacquered_cherry_wood/lacquered_cherry_wood_diff_1k.jpg
  - https://dl.polyhaven.org/file/ph-assets/Textures/jpg/1k/lacquered_cherry_wood/lacquered_cherry_wood_nor_gl_1k.jpg
  - https://dl.polyhaven.org/file/ph-assets/Textures/jpg/1k/lacquered_cherry_wood/lacquered_cherry_wood_rough_1k.jpg
- Local: `textures/giltwood_diff.jpg`, `giltwood_nor.jpg`, `giltwood_rough.jpg`

### Dark Wood
- Page: https://polyhaven.com/a/dark_wood
- License: CC0
- Used as: downloaded as a frame-wood alternative; the live build applies the lacquered cherry set above. Kept on disk.
- Local: `textures/wood_diff.jpg`, `wood_nor.jpg`, `wood_rough.jpg`

### Marble 01
- Page: https://polyhaven.com/a/marble_01
- License: CC0
- Used as: plaster / stone finish on the moulded pedestal. The 1K set is a travertine *tile* with grout; a single slab was cropped out of the grout so the plinth does not show a tile grid.
- Files:
  - https://dl.polyhaven.org/file/ph-assets/Textures/jpg/1k/marble_01/marble_01_diff_1k.jpg
  - https://dl.polyhaven.org/file/ph-assets/Textures/jpg/1k/marble_01/marble_01_nor_gl_1k.jpg
  - https://dl.polyhaven.org/file/ph-assets/Textures/jpg/1k/marble_01/marble_01_rough_1k.jpg
- Local: `textures/marble_diff.jpg`, `marble_nor.jpg`, `marble_rough.jpg` (full tile set, kept for the record); `textures/marble_slab.jpg`, `marble_slab_nor.jpg`, `marble_slab_rough.jpg` (grout-free crop actually applied to the plinth)

### Worn Cracked Plaster
- Page: https://polyhaven.com/a/worn_cracked_plaster
- License: CC0
- Used as: crack decals on some wall sections (alpha extracted from the darker crack network of the diffuse scan; no generative fill). Applied at ~3.15 UV repeat with per-placement offsets so the network is smaller and less obviously tiled than in v2.
- Files:
  - https://dl.polyhaven.org/file/ph-assets/Textures/jpg/1k/worn_cracked_plaster/worn_cracked_plaster_diff_1k.jpg
  - https://dl.polyhaven.org/file/ph-assets/Textures/jpg/1k/worn_cracked_plaster/worn_cracked_plaster_nor_gl_1k.jpg
  - https://dl.polyhaven.org/file/ph-assets/Textures/jpg/1k/worn_cracked_plaster/worn_cracked_plaster_rough_1k.jpg
- Local: `textures/cracks_diff.jpg`, `cracks_nor.jpg`, `cracks_rough.jpg`, and derived `textures/cracks_decal.png`

### Antique Ceramic Vase 01
- Page: https://polyhaven.com/a/antique_ceramic_vase_01
- License: CC0
- Used as: a crop of the floral ceramic panel (and matching roughness) from the official 1K maps, wrapped onto a simple lathe-modeled vase. The glTF mesh was not loaded (`file://` vendored three.js has no GLTFLoader); the original maps are a baked atlas for that mesh, so they are not used as-is. Pedestal is modeled geometry, not a scanned model. For this pass the floral wrap was desaturated ~30% (stronger on blue pixels) to mute the vase blue, as `textures/vase_wrap_desat.jpg`.
- Files:
  - https://dl.polyhaven.org/file/ph-assets/Models/jpg/1k/antique_ceramic_vase_01/antique_ceramic_vase_01_diff_1k.jpg
  - https://dl.polyhaven.org/file/ph-assets/Models/jpg/1k/antique_ceramic_vase_01/antique_ceramic_vase_01_nor_gl_1k.jpg
  - https://dl.polyhaven.org/file/ph-assets/Models/jpg/1k/antique_ceramic_vase_01/antique_ceramic_vase_01_rough_1k.jpg
- Local: `textures/vase_diff.jpg`, `vase_nor.jpg`, `vase_rough.jpg` (full atlas, kept for the record); `textures/vase_wrap.jpg`, `vase_wrap_rough.jpg` (cropped floral panel); `textures/vase_wrap_desat.jpg` (desaturated wrap actually applied)

### Decrepit Wallpaper
- Page: https://polyhaven.com/a/decrepit_wallpaper
- No longer the live wall material (replaced by the Cooper Hewitt sidewall below). Maps kept on disk.
- Local: `textures/wallpaper_diff.jpg`, `wallpaper_nor.jpg`, `wallpaper_rough.jpg`

## Cooper Hewitt / Wikimedia Commons — CC0 sidewall

### Sidewall (possibly USA), ca. 1900 (CH 18476179)
- Object: Cooper Hewitt, Smithsonian Design Museum, sidewall, ca. 1900, accession CH 18476179
- Commons page: https://commons.wikimedia.org/wiki/File:Sidewall_(possibly_USA),_ca._1900_(CH_18476179).jpg
- License: CC0 (as stated on the Commons file page)
- Used as: yellowed patterned corridor wallpaper, cropped to the inscribed repeating field (mount and torn sheet edges removed), wrap-blended at the tile seams, and slightly yellow-graded. Assumed scan width ~0.72 m for real-world UV scale. A second UV-offset overlay of the same map (opacity ~0.22) breaks the most obvious repeat. Paper-grain normal and roughness are taken from ambientCG Wallpaper001A (CC0), not from a generated bump.
- Local: `textures/wallpaper_pat.jpg`, `wallpaper_pat_nor.jpg`, `wallpaper_pat_rough.jpg`
- Also derived: `textures/art/empty_patch.jpg` — a paler, cleaner rectangle of the same wallpaper with faint edge dirt, used where a painting was removed.

## ambientCG — [CC0 license](https://ambientcg.com/license)

### Office Ceiling 001
- Page: https://ambientcg.com/view?id=OfficeCeiling001
- Used as: drop-ceiling acoustic tiles (unchanged from earlier passes)
- Pack: https://ambientcg.com/get?file=OfficeCeiling001_1K-JPG.zip
- Maps used from the pack: Color, NormalGL, Roughness
- Local: `textures/officeceiling_diff.jpg`, `officeceiling_nor.jpg`, `officeceiling_rough.jpg`

### Wallpaper 001A
- Page: https://ambientcg.com/view?id=Wallpaper001A
- Used as: paper-grain normal and roughness only, paired with the Cooper Hewitt colour wallpaper. The Color map itself is nearly plain off-white and is not used as the wall pattern.
- Pack: https://ambientcg.com/get?file=Wallpaper001A_1K-JPG.zip
- Local: folded into `textures/wallpaper_pat_nor.jpg`, `wallpaper_pat_rough.jpg`

### Leaking 001 / Leaking 002
- Pages: https://ambientcg.com/view?id=Leaking001 , https://ambientcg.com/view?id=Leaking002
- Used as: vertical water-stain / leak streak decals. Official Color + Opacity were geometrically warped (narrow at the source, fanning toward the baseboard) into `streak1.png` / `streak2.png`. Original official maps are kept.
- Packs: https://ambientcg.com/get?file=Leaking001_1K-JPG.zip , https://ambientcg.com/get?file=Leaking002_1K-JPG.zip
- Local: `textures/leak1_diff.jpg`, `leak1_opac.jpg`, `leak1_nor.jpg`, `leak1_rough.jpg`, `leak2_diff.jpg`, `leak2_opac.jpg`, `leak2_nor.jpg`, `leak2_rough.jpg`, and derived `textures/streak1.png`, `streak2.png`

### Moss 001
- Page: https://ambientcg.com/view?id=Moss001
- Used as: algae / damp growth at the bottom of leak streaks and along the skirting. For this pass the derived decals were remapped toward green-black (`#2e3a1c`–`#4a5a26`); alpha still comes from the scan with a bottom-weighted falloff; not AI.
- Pack: https://ambientcg.com/get?file=Moss001_1K-JPG.zip
- Maps used from the pack: Color, NormalGL, Roughness
- Local: `textures/algae_diff.jpg`, `algae_nor.jpg`, `algae_rough.jpg`, and derived `textures/algae_decal.png`, `textures/algae_skirt.png`

## Wikimedia Commons — public-domain art (PD-Art / PD-old)

Faithful photographic reproductions of two-dimensional public-domain works. Edited locally only as described (no generative imagery).

### Mona Lisa (intact, pupils only altered in-engine)
- Work: Leonardo da Vinci, *Mona Lisa* (*La Joconde*), c. 1503–1506, Musée du Louvre
- Scan: C2RMF retouched photograph
- Page: https://commons.wikimedia.org/wiki/File:Mona_Lisa,_by_Leonardo_da_Vinci,_from_C2RMF_retouched.jpg
- File used: Wikimedia 1280px derivative of that scan (Special:FilePath, width=1024 actually returned 1280×1908), scaled to 800×1192
- License: public domain (artist died 1519; PD-Art reproduction)
- Edit: the intact painting is what hangs in the corridor. At runtime a canvas texture draws darker pupils over the original irises and offsets them so they follow the player. No smear, no yellow emissive. The earlier eyes-only smear (`textures/art/mona_eyes.jpg`) is no longer loaded; kept on disk only as a record of the previous pass.
- Local: `textures/art/mona_intact.jpg` (live), `textures/art/mona_eyes.jpg` (unused)

### Ordsall Hall, Salford (1830)
- Work: John Ralston (1789–1833), oil painting of Ordsall Hall, Salford, 1830. Collection: Salford Museum & Art Gallery
- Page: https://commons.wikimedia.org/wiki/File:Ordsall_Hall,_Salford_(1830).jpg
- License: public domain (author died 1833; published before 1930; PD-Art)
- Edit: slightly darkened, cool/green tint, soft vignette, damp stain along the bottom edge (unchanged grade from the previous pass). Hung slightly crooked.
- Local: `textures/art/ordsall.jpg`

### Malvern Hall, Warwickshire (1809)
- Work: John Constable, *Malvern Hall in Warwickshire*, 1809
- Page: https://commons.wikimedia.org/wiki/File:John_Constable_-_Malvern_Hall_in_Warwickshire_-_WGA5197.jpg
- License: public domain (Constable died 1837; published before 1930; PD-Art)
- Edit: slightly darkened, cool/green tint, soft vignette, damp stain along the bottom edge
- Local: `textures/art/malvern.jpg`

### Villa by the Sea (c. 1871–1874)
- Work: Arnold Böcklin, *Villa by the Sea* (Villa am Meer), c. 1871–1874. Städel Museum, Frankfurt
- Page: https://commons.wikimedia.org/wiki/File:Arnold_B%C3%B6cklin_-_Villa_by_the_Sea_-_Google_Art_Project.jpg
- Source/Photographer: Google Cultural Institute / Google Art Project
- License: public domain (Böcklin died 1901; published before 1930; PD-Art)
- Edit: slightly darkened, cool tint, soft vignette, damp stain along the bottom edge
- Local: `textures/art/bocklin.jpg`

## Other

- `vendor/three.min.js` is a vendored MIT-licensed copy of three.js (from `/workspace/ln-lighting-test/vendor/three.min.js`).
- The VCR body, fluorescent fixtures, doorway, picture-frame moulding (bevelled extrusion, not a scanned mitre with continuous grain), stone pedestal, VHS overlay, dust motes, drip sheens, outlet plates, and the return-air vent are simple procedural geometry/materials, not scanned models.
- `textures/grime_base.png` and `textures/grime_ceil.png` are locally authored procedural dirt bands (gradient + noise, no generative AI) used as opacity decals along the baseboard and under the ceiling line.


## v3 art-direction follow-up (derived only)

No new third-party scans were introduced. The following local derivatives were added or remade (crop, grade, wrap-blend, alpha feather, colour remap, geometric construction; no generative AI):

- `textures/wallpaper_pat.jpg` (+ nor/rough): wider wrap-blend on all edges so the motif grid and horizontal tile seams are less obvious.
- `textures/cracks_decal.png`: irregular, noise-feathered edges so the decal no longer reads as a rectangle.
- `textures/streak1.png`, `streak2.png`: remade as soft, meandering water runs (narrow at the top, fanning down) from constructed drip masks, tinted as dirty brown-green stain. Official ambientCG Leaking 001/002 maps remain on disk as the source family.
- `textures/algae_decal.png`, `algae_skirt.png`: remade as blotchy green-black slime (`#2e3a1c`–`#4a5a26`), not a turf/moss look. Palette still matches the Moss 001 remap of the earlier pass.
- `textures/marble_slab.jpg` (+ nor/rough): dark grout-like bands filled and wrap-blended so the plinth does not show a tile grid.
- `textures/ceiling_stain.jpg` / `ceiling_stain.png`: a browned, water-damaged derivative of Office Ceiling 001, used as a slightly dropped stained tile at each leak source.
- The empty-painting patch now uses `wallpaper_pat.jpg` with UVs matched to the west-wall repeat (no separate misaligned crop).


## v4 follow-up (derived only)

No new third-party scans were introduced. Local derivatives only (geometric construction, grade, no generative AI):

- `textures/crack_taper.png`: a vertical hairline crack that tapers, with chipped/irregular edges, a brown tide-mark halo, a pale calcium edge, and a narrow wet sheen (256×1024, constructed from noise + morphology, no AI). Replaces the rectangular `cracks_decal.png` stamp in the live build; the older decal remains on disk.
- `textures/mote.png`: a soft round 64px dust particle (radial falloff) used as the Points map, replacing square dust specks.
- The empty-painting patch is still UV-matched `wallpaper_pat.jpg`, now tinted brighter/unfaded (`#ffe8a0`) with a thin dust line along the top edge and a nail.
- Malvern Hall is no longer hung in the v4 layout (the file remains on disk). The live hang is Ordsall (crooked), Mona Lisa, and Böcklin, in that order along the lengthened hall.


## v4.2 follow-up (derived only)

- `textures/art/mona_eyesonly.jpg`: a locally authored derivative of the public-domain Mona Lisa (`mona_intact.jpg`, C2RMF / PD-Art). The sitter's face and figure are overpainted with a smear of the painting's own landscape; only the eyes remain, with darker, slightly too-large pupils baked a few pixels low. No generative AI. This baked map is what the live painting uses (no runtime face redraw, no effects-pass dependency).
- `textures/water_run.png`: a constructed 256×1024 decal (dark wet core, brown tide-mark edges, a thin wet sheen, a greenish algae fan at the foot). No generative AI. Used for the five readable wall runs.


## v4.3 water runs (constructed, no AI)

- `textures/run_1.png` … `run_5.png` (384×1536 RGBA): procedurally painted stain decals (hashed value-noise, no generative AI). Each has an irregular meandering wet core that widens as it descends, a brown tide-mark fringe, a soft staining fan, a baked subtle wet sheen, and a mottled green algae patch with alpha falloff at the foot. Used as a single world-space wall quad per run (no solid box columns).


## v4.4 photo-scan water stains (CC0, no AI)

Replaced the v4.3 procedural box/canvas runs with real photo-scan decals prepared from `/workspace/game2-art/water-stains/` (Ember's pack). Used as decals, not as tiling wallpaper. Each streak is 0.4–1.2 m, top anchored at a crack end, fanning down. Wet-path roughness baked to 0.25–0.4 (vs ~0.85 dry wallpaper). Algae is a masked patch 20–40 cm above the baseboard, plus a damp carpet puddle. No generative AI.

### Leaking006 — primary leak (ambientCG)

- Source: https://ambientcg.com/a/Leaking006
- License: CC0 1.0 Universal (https://docs.ambientcg.com/license/)
- Author: not individually listed on the asset page (published by ambientCG)
- Creation: height-field photogrammetry; real photographed leak (PBRApproximated)
- Local derived: `textures/stain_leak.png` (Color × Opacity, top ~8% cropped to remove the pipe so the streak starts at a crack end), `textures/stain_leak_rough.jpg` (official roughness remapped to 0.25–0.4 on the wet path). A brown tide-mark fringe was composited from concrete_wall_005 along the leak edge, tinted toward `#6b5233`–`#4a3a24`.

### decrepit_wallpaper — secondary thin runs (Poly Haven)

- Source: https://polyhaven.com/a/decrepit_wallpaper
- License: CC0 1.0 (https://polyhaven.com/license)
- Author: Rob Tuytel
- Local derived: `textures/stain_thin1.png`, `stain_thin2.png` (luminance-alpha of darker vertical water/grime runs, tinted `#6b5233`–`#4a3a24`) and matching `*_rough.jpg`. Not used as a wallpaper tile.

### concrete_wall_005 — tide-mark halo (Poly Haven)

- Source: https://polyhaven.com/a/concrete_wall_005
- License: CC0 1.0
- Authors: Dimitrios Savva (Photography), Dario Barresi (Processing)
- Used as the ochre/brown tide-mark fringe baked into the leak and thin-run decals (chroma around the upper-third water line; grey plaster discarded).

### worn_mossy_plasterwall — algae pool (Poly Haven)

- Source: https://polyhaven.com/a/worn_mossy_plasterwall
- License: CC0 1.0
- Author: Amal Kumar
- Local derived: `textures/stain_algae.png` (chroma-masked greens/dark dirt, tinted `#2e3a1c`–`#4a5a26`, soft falloff so it is not a solid quad). Placed 20–40 cm above the baseboard at the foot of each run.
