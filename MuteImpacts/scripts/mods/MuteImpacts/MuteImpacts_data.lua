local mod = get_mod("MuteImpacts")

local sounds_to_toggle = {
	forcestaff_primary_fire = "wwise/events/weapon/play_explosion_force_sml",
	carapace_no_damage_melee_slashing = "wwise/events/weapon/play_hit_indicator_melee_slashing_super_armor_no_damage",
}
mod.sounds_to_toggle = sounds_to_toggle

return {
	name = mod:localize("mod_name"),
	description = mod:localize("mod_description"),
	is_togglable = true,
}
