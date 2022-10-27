/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if state == 0 {
	timer++;
	if timer >= gethot{ state++
		time = get_timer()
		starttime = time;
		play_sound(snd_hot1,1);
		sprite_index = spr_hotplate2
	}
}

if state == 1 {
	
	if keyboard_check_pressed(vk_space)
	{
		reactionspeed = get_timer()-starttime;
		play_sound(snd_hot2,1 )
		ratsprite = spr_ratsurprised;
		state = 2; timer=0;
		win = true;
	}
}

if state == 2 {
	timer++;
	raty = lerp(raty, 200, 0.1);
}
