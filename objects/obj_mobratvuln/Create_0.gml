/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

state = 0;

grav = 1;

seq = layer_sequence_create(layer, x, y, sq_mb_vuln) //start with idle animation
scale = 1;
layer_sequence_xscale(seq, scale)
layer_sequence_yscale(seq, scale)

facing = 1;

countdown = 8;

type = obj_mobratjump;