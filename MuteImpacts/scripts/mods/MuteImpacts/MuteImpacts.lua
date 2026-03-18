local mod = get_mod("MuteImpacts")

-- ####################################################################
-- DATA
-- ####################################################################
mod.version = "1.0.3"
mod:info("v"..mod.version.." loaded uwu nya :3")

local audio_plugin

-- ################################
-- Local References for Performance
-- ################################
local pairs = pairs
local type = type

mod:io_dofile("MuteImpacts/scripts/mods/MuteImpacts/SoundsToMute")
local sounds_to_toggle = mod.sounds_to_toggle

-- ####################################################################
-- MOD LOGIC
-- ####################################################################
-- -------------
-- Changing sounds
-- -------------
local function toggle_sound(audio_plugin, sound_event, bool_silence_this) 
    if type(sound_event) == "table" then
        for _, inner_sound in pairs(sound_event) do
            toggle_sound(audio_plugin, inner_sound, bool_silence_this)
        end
    else
        if bool_silence_this then
            audio_plugin.silence_sounds(sound_event)
        else
            audio_plugin.unsilence_sounds(sound_event)
        end
    end
end

-- -------------
-- Muting on Startup and Setting Change
-- -------------
mod.on_all_mods_loaded = function()
    audio_plugin = get_mod("Audio")
    if not audio_plugin then
        mod:error(mod:localize("missing_audio_plugin_error"))
        return
    end

    local sounds_to_toggle = mod.sounds_to_toggle
    for setting_name, sound_event in pairs(sounds_to_toggle) do 
        if mod:get(setting_name) then
            toggle_sound(audio_plugin, sounds_to_toggle[setting_id], true)
        end
    end
end

mod.on_setting_changed = function(setting_id)
    local mute_this = mod:get(setting_id)

    if mute_this then
        toggle_sound(audio_plugin, sounds_to_toggle[setting_id], true)
    else
        toggle_sound(audio_plugin, sounds_to_toggle[setting_id], false)
    end
end