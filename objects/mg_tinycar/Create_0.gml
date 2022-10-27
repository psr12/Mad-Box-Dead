/// @description Insert description here
// You can write your code in this editor

event_inherited()

prompt = "Park!"

seq = layer_sequence_create("seqback", room_width/2, room_height/2, seq_tinycar)

image_scale(2.7)

hsp=0;vsp=0;
drivespeed = 3;
x = 0;

dir = 0;

play_sound(snd_electroQtie, pitch)