/// @description Insert description here
// You can write your code in this editor

play_sound(snd_big_impact,1)

obj_cameraman.shake = 25;

instance_destroy();

	repeat(20)
		{part_particles_create(global.partsys, random_range(bbox_left, bbox_right), 
			random_range(bbox_top, bbox_bottom),
			global.part_cloud, 1)
		}