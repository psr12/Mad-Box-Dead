/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();


hitpoints = 8; //how many times you need to hit heart
keepit = 0; //tracks paw location for horizontal swipes, so 2nd swipes is the opposite

global.shiny = part_system_create_layer("Instances_2", false)

seq = layer_sequence_create(layer, x, y, sq_br_ready)
scale = 7;
layer_sequence_xscale(seq, scale)
layer_sequence_yscale(seq, scale)

brightness = 0;

layer_shader(layer,slimshady)


image_alpha = 0;
state = 0;

//BPM = obj_recorder.BPM;

//yimer = 0; //for the bouncing on the beat, ect, anything on beat

//beat = floor(game_get_speed(gamespeed_fps)/(BPM/60)) //how many frames between 'beats'

beattimer = 0; //for timing within states
	//do i spawn enemies this beat?
phasetimer = 0; //for changing phases, 
	//how many loops of this phase have i done?
