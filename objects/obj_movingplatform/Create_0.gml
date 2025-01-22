/// @description Insert description here
// You can write your code in this editor

event_inherited()

var kid = instance_create_depth(x,y,depth,obj_tunein)
kid.progenitor = id;

state=0;
/*
0 = first spawned
1 = setting x/y
2 = ready

*/


countdown = 2;

hsp = 0
vsp = 0;

topspeed  = 10;

grace_time = 3; //have to touch the platform for this long before falling

target = [x, y ]

scale = 2.5; //for mouse icon