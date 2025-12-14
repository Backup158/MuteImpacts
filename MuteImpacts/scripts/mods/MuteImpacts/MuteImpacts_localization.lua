local mod = get_mod("MuteImpacts")

-- ################################
-- Local References for Performance
-- ################################
local pairs = pairs

-- ################################
-- Localization
-- ################################
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
	},
	damage_type = {
		melee_slashing = {
			en = "Melee Slashing",
		},
	},
}

local localizations = {
	mod_name = {
		en = "Mute Impacts",
	},
	mod_description = {
		en = "pipe down skittle squad",
	},
	missing_audio_plugin_error = {
		en = "Audio Plugin not detected!",
	},
	
	forcestaff_primary_fire = {
		en = "Force Staff Primary Fire",
	},
}
for armor_type, armor_type_localization in pairs(localizations_to_reuse.armor_type) do
	for damage_done, damage_done_localization in pairs(localizations_to_reuse.damage_done) do
		for damage_type, damage_type_localization in pairs(localizations_to_reuse.damage_type) do
			localizations[armor_type.."_"..damage_done.."_"..damage_type] = {
				-- super_armor_no_damage_melee_slashing = "Carapace: No Damage (Melee Slashing)"
				en = armor_type_localization["en"]..": "..damage_done_localization["en"].." ("..damage_type_localization["en"]..")"
			}
		end 
	end 
end 

return localizations