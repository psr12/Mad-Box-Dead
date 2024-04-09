/// @description Insert description here
// You can write your code in this editor
event_inherited()

cancel = false;
var kid = instance_create_depth(x,y,depth,obj_tunein)
kid.progenitor = id;

state=0;

countdown = 2;

vsp=0;
grav = 0.4;

topspeed  = 10;

grace_time = 3; //have to touch the platform for this long before falling