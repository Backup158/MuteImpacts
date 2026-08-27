local mod = get_mod("MuteImpacts")

-- ################################
-- Local References for Performance
-- ################################
local pairs = pairs
local string = string
local string_format = string.format

-- ################################
-- Localization
-- ################################
-- ################
-- Manual Localization
-- For Mod Info and Exceptions
-- ################
local localizations = {
	mod_name = {
		en = "Silence Obnoxious Sounds (SOS)",
	},
	mod_description = {
		-- en = "pipe down skittle squad",
		en = "Mutes impact SFX and other various sounds that annoy me.",
	},
	missing_audio_plugin_error = {
		en = "Simple Audio and Audio Plugin not detected! You need at least one of those installed.",
	},
	mod_option_tooltip_show_group = {
		en = "Show contents of this group. This toggle is only to show/hide the group; actual toggles depend on the individual settings.",
	},
	mod_option_tooltip_sound_event_prefix = {
		en = "Sound event: ",
	},
	-- -------------------------
	-- Widget Tab Names
	-- -------------------------
	mod_option_group_psyker_staff = {
		en = string_format("%s - Force Staves", Localize("loc_class_psyker_name")),
	},
	mod_option_group_psyker_misc = {
		en = Localize("loc_class_psyker_name"),
	},
	mod_option_group_skitussy = {
		en = Localize("loc_class_cryptic_name"),
	},
	mod_option_group_lasbeam_crack = {
		en = "Lasbeam Crack",
	},
	mod_option_group_electrocution = {
		en = "Electrocution",
	},
	mod_option_group_npc_shop_ui = {
		en = "NPC Shop UI",
	},
	mod_option_group_player_voice = {
		en = "Player Voice",
	},
	mod_option_group_melee_hits = {
		en = "Melee Hits",
	},
	mod_option_group_ranged_hits = {
		en = "Ranged Hits",
	},
	mod_option_group_misc = {
		en = "Miscellaneous",
	},
	-- -------------------------
	-- One-off Sounds
	-- -------------------------
	-- -------------
	-- Pskyer
	-- -------------
	-- -------
	-- Psyker - Force Staff
	-- -------
	forcestaff_primary_fire = {
		en = "Force Staff Primary Fire - Impact",
	},
	forcestaff_primary_fire_woosh = {
		en = "Force Staff Primary Fire - Initial Firing *PPPHHOOOO*",
	},
	forcestaff_primary_fire_woosh_projectile = {
		en = "Force Staff Primary Fire - Projectile Flight Trail (Subtle *tssszzz*)",
	},
	forcestaff_secondary_fire_explosion = {
		-- en = "Force Staff Secondary Fire Explosion",
		en = string_format("%s/%s Secondary Fire Explosion", Localize("loc_weapon_family_forcestaff_p4_m1"), Localize("loc_weapon_family_forcestaff_p1_m1")),
		-- en = string_format("%s %s %s and %s %s %s", Localize("loc_weapon_pattern_forcestaff_p4_m1"), Localize("loc_weapon_mark_forcestaff_p4_m1"), Localize("loc_weapon_family_forcestaff_p4_m1"), Localize("loc_weapon_pattern_forcestaff_p1_m1"), Localize("loc_weapon_mark_forcestaff_p1_m1"), Localize("loc_weapon_family_forcestaff_p1_m1")),
	},
	forcestaff_flames_primary_fire_play = {
		en = string_format("%s Primary and Secondary Fire *KHWOOOOOO*", Localize("loc_weapon_family_forcestaff_p2_m1")),
	},
	forcestaff_flames_primary_fire_stop = {
		en = string_format("%s Primary Fire - Stop", Localize("loc_weapon_family_forcestaff_p2_m1")),
	},
	forcestaff_flames_secondary_fire = {
		en = string_format("%s Secondary Fire Additional", Localize("loc_weapon_family_forcestaff_p2_m1")),
	},
	-- -------
	-- Psyker - Other
	-- -------
	warp_peril_warning = {
		en = "Warp Peril - Warning at ~50%% (Low Humming)",
	},
	warp_peril_critical = {
		en = "Warp Peril - Critical at 97%% (Loud *NNNNNH TTTTHHHHHHRRRRR*)",
	},
	psyker_smite_charge = {
		en = "Force Sword Block and Brain Burst (*whrrrrsttttzzz* not *wubwub*)",
	},
	-- -------------
    -- Skitussy
	-- -------------
	skitussy_skull_charge = {
		en = "Servo Skull Laspistol - Charging",
	},
	skitussy_skull_fire = {
		en = "Servo Skull Laspistol - Shooting (Not including Lasbeam Crack (Player))",
	},
	-- -------------
    -- Lasgun Shots
	-- -------------
	lasbeam_crack_player = {
		en = "Lasbeam Crack (Player)",
	},
	lasbeam_crack_enemy_captain = {
		en = "Lasbeam Crack (Rodin Karnak)",
	},
	lasbeam_crack_enemy = {
		en = "Lasbeam Crack (Other Scab Enemies)",
	},
	-- -------------
    -- Lightning Attacks
	-- -------------
	lightning_attack_hit = {
		en = "Lightning Attack Hit and Stop",
	},
	-- -------------
    -- Arbites Maul Trail
	-- -------------
	adamant_maul_swing = {
		en = "Arbites Shock Maul Swing Trail",
	},
	shock_maul_hit = {
		en = "Shock Maul Hit",
	},
	-- -------------
    -- Menus
	-- -------------
	penance_reward_claim = {
		en = "Claiming Penance Rewards",
	},
	npc_menu_enter = {
		en = "Unique NPC Menu Entry SFX",
	},
	crafting_interact_forge_button = {
		-- en = "Shrine of the Omnissiah: Button Press",
		en = string_format("%s: Open Menu", Localize("loc_hub_interaction_crafting")),
	},
	crafting_interact_traits = {
		-- en = "Shrine of the Omnissiah: Blessings",
		en = string_format("%s: Blessings", Localize("loc_hub_interaction_crafting")),
	},
	crafting_interact_perk_reroll = {
		-- en = "Shrine of the Omnissiah: Perk Reroll",
		en = string_format("%s: Perk Reroll", Localize("loc_hub_interaction_crafting")),
	},
	crafting_interact_upgrade = {
		-- en = "Shrine of the Omnissiah: Consecrate Item",
		en = string_format("%s: %s", Localize("loc_hub_interaction_crafting"), Localize("loc_crafting_upgrade_option")),
	},
	crafting_interact_empower = {
		-- en = "Shrine of the Omnissiah: Empower Item",
		en = string_format("%s: %s", Localize("loc_hub_interaction_crafting"), Localize("loc_expertise_crafting_title")),
	},
	-- -------------
    -- Cough
	-- -------------
	player_gas_cough = {
		en = "Coughing from Pox Gas",
	},
}

-- ################
-- Automatic Localization for Options
-- ################
local localizations_to_reuse = {
	armor_type = {
		super_armor = {
			en = "Carapace",
		},
	},
	damage_done = {
		no_damage = {
			en = "No Damage",
		},
		shield = {
			en = "Bulwark Shield Hit",
		},
		armor = {
			en = "Armored Hit",
		},
		res = {
			en = "Damage Reduced",
		},
		unarmor = {
			en = "Unarmored Hit",
		},
		armor_break = {
			en = "Armor Broken",
		},
		light = {
			en = "Light Attack",
		},
		heavy = {
			en = "Heavy Attack",
		},
	},
	-- Melee
	damage_type = {
		melee_slashing = {
			en = "Melee Slashing",
		},
		melee = {
			en = "Melee",
		},
	},
	melee_hits = {
		en = "Melee Hits",
	},
	melee_weapon_types = {
		blunt = {
			en = "Blunt",
		},
		sword = {
			en = "Sword",
		},
		axe = {
			en = "Axe",
		},
		knife = {
			en = "Knife",
		},
		human_punch = {
			en = "Human Punch",
		},
		ogryn_punch = {
			en = "Ogryn Punch",
		},
	},
	-- Ranged
	ranged_hits = {
		en = "Ranged Hits",
	},
	ranged_weapon_types = {
		gen = {
			en = "General",
		},
		laser = {
			en = "Laser",
		},
	},
}
localizations_to_reuse.damage_done.armored = localizations_to_reuse.damage_done.armor
localizations_to_reuse.damage_done.unarmored = localizations_to_reuse.damage_done.unarmor

-- Automatic localization formatting
-- 	since these have certain patterns, I'm doing it like this instead of pasting it over and over again
--	these localize the keys found in SoundsToMute.lua
--  they will create more localizations than necessary, but that is no problem
for damage_done, damage_done_localization in pairs(localizations_to_reuse.damage_done) do
	-- -------------------------
	-- Carapace negation
	-- -------------------------
	for armor_type, armor_type_localization in pairs(localizations_to_reuse.armor_type) do
		for damage_type, damage_type_localization in pairs(localizations_to_reuse.damage_type) do
			localizations["melee_hits_"..armor_type.."_"..damage_done.."_"..damage_type] = {
				-- super_armor_no_damage_melee_slashing = "Carapace: No Damage (Melee Slashing)"
				en = armor_type_localization["en"]..": "..damage_done_localization["en"].." ("..damage_type_localization["en"]..")"
			}
		end 
	end 
	-- -------------------------
	-- Melee hits against armor
	-- -------------------------
	for weapon_type, weapon_type_localization in pairs(localizations_to_reuse.melee_weapon_types) do
		localizations["melee_hits_"..damage_done.."_"..weapon_type] = {
			-- melee_hits_blunt_no_damage = "Melee Hit: No Damage (Blunt)"
			--en = localizations_to_reuse.melee_hits["en"]..": "..damage_done_localization["en"].." ("..weapon_type_localization["en"]..")"
			-- The above but no "Melee Hits: "
			en = damage_done_localization["en"].." ("..weapon_type_localization["en"]..")"
		}
	end
	-- -------------------------
	-- Ranged hits against armor
	-- -------------------------
	for weapon_type, weapon_type_localization in pairs(localizations_to_reuse.ranged_weapon_types) do
		localizations["ranged_hits_"..damage_done.."_"..weapon_type] = {
			-- ranged_hits_laser_no_damage = "Ranged Hit: No Damage (Laser)"
			-- en = localizations_to_reuse.ranged_hits["en"]..": "..damage_done_localization["en"].." ("..weapon_type_localization["en"]..")"
			-- The above but no "Ranged Hits: "
			en = damage_done_localization["en"].." ("..weapon_type_localization["en"]..")"
		}
	end
end 

return localizations