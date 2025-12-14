local mod = get_mod("MuteImpacts")

mod:io_dofile("MuteImpacts/scripts/mods/MuteImpacts/SoundsToMute")
local sounds_to_toggle = mod.sounds_to_toggle

return {
	name = mod:localize("mod_name"),
	description = mod:localize("mod_description"),
	is_togglable = true,
}
