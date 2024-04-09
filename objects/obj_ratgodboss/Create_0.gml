/// @description Insert description here
// You can write your code in this editor


	x = room_width/2
	y = room_height/2
	
// Inherit the parent event
event_inherited();

seq = noone;
hp = 3;
phase = 1;

squishspeed = 2;
squishsin = 200;
squishamt = 0.05;

attacksbeforevuln = 3;
max_attacksbeforevuln = 3;

addition = 0; //0 = nothing, 1= divider, 2=left, 3=right
goto = 0; //for attack selection

particle = global.beeline_part_glitchy;

state = 19;
timer = 0;
normaloffset = -200;
telesound = snd_telesound;

nodelist = ds_list_create();

attacklist = ds_list_create();

flashcount = 0;

nodepatternarray = [
[0, 1, 3, 2], //up right, down, left
[1, 0, 2, 3], 
[2, 0, 3, 2],
[3, 1, 2, 3],
]

nodepatternarray_hard = [
[0, 2, 3, 2, 3], 
[0, 1, 2, 1, 3, 2], 
[0, 2, 3, 1, 3, 2],
]

nodepattern = nodepatternarray[0]

//partman = noone;

alarm[0] = 2; //camera positioning


imonbeat = false; //true when event 0 procs


monologue = @"











"


