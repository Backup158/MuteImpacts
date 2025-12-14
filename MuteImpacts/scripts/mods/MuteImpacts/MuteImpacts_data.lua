local mod = get_mod("MuteImpacts")

local pairs = pairs
local table = table
local table_insert = table.insert

mod.sounds_to_toggle = {
	forcestaff_primary_fire = "wwise/events/weapon/play_explosion_force_sml",
	super_armor_no_damage_melee_slashing = "wwise/events/weapon/play_hit_indicator_melee_slashing_super_armor_no_damage",
}
local sounds_to_toggle = mod.sounds_to_toggle

local final_widgets = {}
for setting_name, _ in pairs(sounds_to_toggle) do 
	table_insert(final_widgets, {
		setting_id = setting_name,
        type = "checkbox",
        default_value = true,
	})
end

return {
	name = mod:localize("mod_name"),
	description = mod:localize("mod_description"),
	is_togglable = true,
	options = {
		widgets = final_widgets,
	},
}
