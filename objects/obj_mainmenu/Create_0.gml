/// @description Insert description here
// You can write your code in this editor


tscale = 2
bscale = 1

seq = layer_sequence_create(layer, x, y, asq_mr_howsthat) //start with idle animation
scale = 2;
layer_sequence_xscale(seq, scale)
//layer_sequence_speedscale(seq, 2)
layer_sequence_yscale(seq, scale)

itskindascaleinit = 4;
itskindascale = itskindascaleinit;

selected = 0;

baby = instance_create_layer(x+350,y, layer, obj_seqdummy)
baby.showing = ch_triforce;
baby.wasfacing = -1;
baby.scale = 1.5;
baby.float = true;

story_level_selected = 1; 

if !audio_is_playing(song_madratheart) {
	music =	play_sound(song_madratheart,1)  }

start_time = get_timer();
time = 0;
micros_per_sec = 60000000;
bpm = 132;
div_4_previous = 0
div_4 = 0;
div_4_trigger = true;