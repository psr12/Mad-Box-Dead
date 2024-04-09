/// @description Insert description here
// You can write your code in this editor

alarm[0] = 1;
showing = seq_blank
howsthat = -1;
seq = layer_sequence_create(layer, x, y, showing) //start with idle animation


scale = 1;
addscale = 1; //for heartbeat

wasfacing = 1;

targetx = x;
targety = y;
spd = 0;


float = false; //if true, hover like heart
floattime = 0;
floattimeadd = 0.05;

//pumping = false;
shake = false;

blue = false;
