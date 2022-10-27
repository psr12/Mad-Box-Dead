/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

pillrotation++;

if keyboard_check_pressed(vk_space)
{
	layer_sequence_headpos(seq, 0)
	layer_sequence_play(seq)
	layer_sequence_speedscale(seq, 2*pitch)
	
	if ds_list_size(pills) > 0 {
	ds_list_delete(pills,0)
	lineoffset = 90/7
	play_sound(snd_wariocrush,pitch+0.02*ds_list_size(pills))
	part_particles_create(partsys, x,y, part_spark, 6)
	if ds_list_size(pills) == 0 {play_sound(snd_correct,pitch)
				win= true;
		}
	}
}

lineoffset = lerp(lineoffset, 0, 0.1*pitch)