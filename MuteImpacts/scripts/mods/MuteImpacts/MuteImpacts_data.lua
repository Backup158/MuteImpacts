local mod = get_mod("MuteImpacts")

-- ################################
-- Local References for Performance
-- ################################
local table = table
local table_insert = table.insert
local table_contains = table.contains

mod:io_dofile("MuteImpacts/scripts/mods/MuteImpacts/SoundsToMute")
local sounds_to_toggle = mod.sounds_to_toggle

-- ################################
-- Widget Creation
-- ################################
local final_widgets = Script.new_map( #sounds_to_toggle )
local final_widgets_iterator = 1

for i = 1, #sounds_to_toggle do 
	local setting_table = sounds_to_toggle[i]

	final_widgets[final_widgets_iterator] = {
		setting_id = setting_table.internal_id,
        type = "checkbox",
		tooltip = setting_table.sound_event,
        default_value = not setting_table.do_not_disable_by_default,
		-- tab = setting_table.tab, -- Alf's DMF Ext
	}
	final_widgets_iterator = final_widgets_iterator + 1
end

return {
	name = mod:localize("mod_name"),
	description = mod:localize("mod_description"),
	is_togglable = true,
	options = {
		widgets = final_widgets,
	},
}
