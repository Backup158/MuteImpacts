local mod = get_mod("MuteImpacts")

mod:io_dofile("MuteImpacts/scripts/mods/MuteImpacts/SoundsToMute")
local sounds_to_toggle = mod.sounds_to_toggle

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
}

return localizations