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