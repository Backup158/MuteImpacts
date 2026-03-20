local mod = get_mod("MuteImpacts")

-- ################################
-- Local References for Performance
-- ################################
local pairs = pairs
local table = table
local table_insert = table.insert
local table_contains = table.contains

mod:io_dofile("MuteImpacts/scripts/mods/MuteImpacts/SoundsToMute")
local sounds_to_toggle = mod.sounds_to_toggle

-- ################################
-- Widget Creation
-- ################################
local final_widgets = {}

-- Manually tracking things to not disable here
-- Because I'm too lazy to turn every entry in SoundsToMute into a subtable
local sounds_to_not_disable_by_default = {
	"melee_hits_light_axe",
	"melee_hits_heavy_axe",
	"ranged_hits_unarmored_gen",
	"ranged_hits_unarmored_laser",
}

for setting_name, _ in pairs(sounds_to_toggle) do 
	local truth = true
	if table_contains(sounds_to_not_disable_by_default, setting_name) then truth = false end

	table_insert(final_widgets, {
		setting_id = setting_name,
        type = "checkbox",
        default_value = truth,
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
