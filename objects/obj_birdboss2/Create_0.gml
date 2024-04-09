/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

//image_blend= c_black
image_alpha = 0.2;

//time = 0;
//timeid = shader_get_uniform(shader_scanlines, "time")

hp = 10;

state = 0;

attack = 0;

scale = 5;
image_scale(scale)

	part_type_alpha1(global.part_leaf, 0.5)
	part_type_life(global.part_leaf, 30, 50)
	part_type_size(global.part_leaf, 2,2, -0.02, 0.05)
	part_type_sprite(global.part_leaf, spr_leaf, false, false, true)
	part_type_speed(global.part_leaf, 2,4, 1, 0)
	part_type_direction(global.part_leaf, 0, 0, 0, 0)
	part_type_orientation(global.part_leaf, 0, 0, 0, 0.5, true)

gust = 0; //direction
gust_power=4; //speed

alarm[0] = 2;

justusedtalon = false;

attacknum = 0;
attacks_per_phase = 3;

drawy = ystart;

image_speed = 1;



	part_layer = layer_create(-1000, "particle_layer")
	partsys = part_system_create_layer(part_layer, false)

scr_chseqlist2()






