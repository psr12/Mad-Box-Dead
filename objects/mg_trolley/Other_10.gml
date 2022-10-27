/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

timer+= 0.03;

//if layer_sequence_is_finished(mouse)
//{
//	layer_sequence_headpos(mouse, 0)
//	layer_sequence_play(mouse)
//}

if state == 0 {
	if keyboard_check_pressed(vk_left) || keyboard_check_pressed(vk_right)
	{
		whodies = keyboard_check(vk_right) - keyboard_check(vk_left)
		state = 1;
		win = true;
		if whodies = -1 {audio_play_sound(snd_bleep, 1, 1)
		part_particles_create(partsys, wix, victimy, partcen, 5)
		}
		else {play_sound(snd_mouse_chatter, pitch);}
		play_sound(snd_big_impact, pitch)
	}
}


if state == 1 {
	
}