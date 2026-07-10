# 1.4.0 - 2026-07-08
- Added support for Simple Audio (SA)

# v1.3.0
2026-06-06

- Added Arbites Shock Maul swing effects
    - These use the `play_psyker_chain_lightning_hit` sounds for the direct shock effect
    - Empty swings use `play_shockmaul_1h_p2_swing`, with a heavy variant
- Added support for blunt Bulwark Shield hit (`melee_hits_blunt_shield`)
- Updated `melee_hits_armor_blunt` to account for the event without `play_` at the start

# v1.2.0
2026-03-20

- Added player coughing from gas
    - such as `play_veteran_female_a__vce_coughing_ends`
    - Applies for beginning/ending coughs for all player voices
- Prevented some options from being disabled by default
    - axe light/heavy generic hit
    - unarmored generic/lasgun hit
- Refactored code to keep Mod Options in order (this drove me crazy and genuinely made me not want to use my own mod lmaooo)

# v1.1.0
2026-03-18

- Added more sounds
    - Axe melee impacts
        - `play_melee_hits_axe_res`
        - `play_melee_hits_axe_light`
        - `play_melee_hits_axe_heavy`
    - Lasbeam Cracks
        - `play_weapon_lasgun_crack_beam_nearby`
        - `play_weapon_lasgun_crack_beam_imperial_guards`
        - `play_weapon_lasgun_crack_beam_nearby_husk`
    - Ranged Hits
        - Armored: `play_bullet_hits_gen_armored` and `play_bullet_hits_laser_armored`, plus the ones that end in things such as `_reduced` and `_death` 
        - Unarmoed: ditto but unarmored
    - Penance Reward claiming
- Added localization for these sound types
- Reorganized code to be visually separated

# v1.0.3
2025-12-16

- Fixed missing localizations from incorrect key names

# v1.0.2
2025-12-16

Nexus Release

- AML support

# v1.0.1
2025-12-15

- Added missing localizations
- Renamed some keys from internal usage because I remembered I could just do that AND THERE'S NOBODY WHO CAN STOP ME AHAHAHAHA

# v1.0.0
2025-12-14

- Initial upload
- Using the Audio Plugin, silences certain impact sounds
    - Force Staff Primary Fire
    - Reduced damage vs Flak/Carapace
    - Completely negated damage (Carapace, Bulwark Shields, idk what else does this)