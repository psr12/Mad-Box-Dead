/// @description Insert description here
// You can write your code in this editor

if !init exit

if distance_to_object(rp_leader) < jump_range and state == 0 jump_cooldown--;


if !jump_cooldown {
		if jump_cooldown == 0 play_sound(snd_growl)
		vsp = -5
		fire_cooldown--;
		if !fire_cooldown {
			state = 40;
			fire_cooldown = 8;
			jump_cooldown = 8;
			new_sprite = attack_sprite
		}
}

if state == 40 {
	fire_fire_cooldown--;
	if !fire_fire_cooldown {
		state = 0;
		fire_fire_cooldown = 4;
		new_sprite = idle_sprite

	}
}


if new_sprite != sprite_index {
flip = 1;
}
