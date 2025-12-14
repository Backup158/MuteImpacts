local mod = get_mod("MuteImpacts")

-- ###################################################################
-- DATA
-- ###################################################################
mod.version = "1.0.0"
mod:info("v"..mod.version.." loaded uwu nya :3")

-- ################################
-- Local References for Performance
-- ################################


-- ###################################################################
-- MOD LOGIC
-- ###################################################################
local audio_plugin = get_mod("Audio")
audio_plugin.silence_sounds({
    "wwise/events/weapon/play_explosion_force_sml",
    "wwise/events/weapon/play_hit_indicator_melee_slashing_super_armor_no_damage",
})