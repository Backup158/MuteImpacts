local mod = get_mod("MuteImpacts")

mod.sounds_to_toggle = {
	forcestaff_primary_fire = "wwise/events/weapon/play_explosion_force_sml",
	super_armor_no_damage_melee_slashing = "wwise/events/weapon/play_hit_indicator_melee_slashing_super_armor_no_damage",
    super_armor_no_damage_melee = "wwise/events/weapon/play_hit_indicator_melee_super_armor_no_damage",
}
-- check out:
--  melee_hits_blunt_no_damage
--  melee_hits_sword_no_damage
--  play_bullet_hits_gen_damage_negated
--  play_bullet_hits_laser_damage_negated