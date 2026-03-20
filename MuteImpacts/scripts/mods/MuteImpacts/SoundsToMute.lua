local mod = get_mod("MuteImpacts")

-- These are found manually
-- There are too many exceptions when I tried using logical loops
-- Instead, I reserved that for localization
-- The keys are made up to match my localization key style
-- The values are the actual wwise events
mod.sounds_to_toggle = {
	-- --------------------------
    -- Force Staff left click
	-- --------------------------
	forcestaff_primary_fire = "wwise/events/weapon/play_explosion_force_sml",
	-- --------------------------
    -- Lasbeam Crack
	-- --------------------------
    lasbeam_crack_player = "wwise/events/weapon/play_weapon_lasgun_crack_beam_nearby",
    lasbeam_crack_enemy_captain = "wwise/events/weapon/play_weapon_lasgun_crack_beam_imperial_guards",
    lasbeam_crack_enemy = "wwise/events/weapon/play_weapon_lasgun_crack_beam_nearby_husk",
	-- --------------------------
    -- NPC UI Sounds
	-- --------------------------
    penance_reward_claim = "wwise/events/ui/play_ui_penances.*claim",
    npc_menu_enter = "wwise/events/ui/play_ui_npc.*enter",
    --crafting_interact_forge_button = "wwise/events/ui/play_ui_npc_interacts_forge_button_fx",
    crafting_interact_traits = "wwise/events/ui/play_ui_npc_interacts_forge_.*_trait.*",
    crafting_interact_perk_reroll = "wwise/events/ui/play_ui_npc_interacts_forge_reroll_perk",
    crafting_interact_upgrade = "wwise/events/ui/play_ui_npc_interacts_forge_upgrade_item",
    crafting_interact_empower = "wwise/events/ui/play_ui_empower_weapon.*", -- also has max
	-- --------------------------
    -- NPC UI Sounds
	-- --------------------------
    -- coughs on "enter" and "exit"
    player_gas_cough = "wwise/events/ui/play_player_gas.*",
	-- --------------------------
    -- Melee hits
	-- --------------------------
    -- -------------
    -- Against Armor
    -- -------------
	melee_hits_super_armor_no_damage_melee_slashing = "wwise/events/weapon/play_hit_indicator_melee_slashing_super_armor_no_damage",
    melee_hits_super_armor_no_damage_melee = "wwise/events/weapon/play_hit_indicator_melee_super_armor_no_damage",
    melee_hits_no_damage_blunt = "wwise/events/weapon/melee_hits_blunt_no_damage", -- for some reason these have no play_
    melee_hits_no_damage_sword = "wwise/events/weapon/melee_hits_sword_no_damage", -- for some reason these have no play_
    melee_hits_armor_axe = "wwise/events/weapon/play_melee_hits_axe_armor",
    melee_hits_armor_blunt = "wwise/events/weapon/play_melee_hits_blunt_armor",
    melee_hits_armor_sword = "wwise/events/weapon/play_melee_hits_sword_armor",
    melee_hits_armor_knife = "wwise/events/weapon/play_melee_hits_knife_armor",
    -- -------------
    -- Reduced Damage
    -- -------------
    melee_hits_res_axe = "wwise/events/weapon/play_melee_hits_axe_res",
    -- -------------
    -- Light Attacks
    -- -------------
    melee_hits_light_axe = "wwise/events/weapon/play_melee_hits_axe_light",
    -- -------------
    -- Heavy Attacks
    -- -------------
    melee_hits_heavy_axe = "wwise/events/weapon/play_melee_hits_axe_heavy",
	-- --------------------------
    -- Ranged damage
	-- --------------------------
    -- -------------
    -- Negated
    -- -------------
    ranged_hits_no_damage_gen = "wwise/events/weapon/play_bullet_hits_gen_damage_negated",
    ranged_hits_no_damage_laser = "wwise/events/weapon/play_bullet_hits_laser_damage_negated",
    -- -------------
    -- Armored
    -- Regex match for armored, armored_reduced, etc
    -- -------------
    ranged_hits_armored_gen = "wwise/events/weapon/play_bullet_hits_gen_armored.*",
    ranged_hits_armored_laser = "wwise/events/weapon/play_bullet_hits_laser_armored.*",
    -- -------------
    -- Unarmored
    -- -------------
    ranged_hits_unarmored_gen = "wwise/events/weapon/play_bullet_hits_gen_unarmored.*",
    ranged_hits_unarmored_laser = "wwise/events/weapon/play_bullet_hits_laser_unarmored.*",
}