/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();


image_alpha = 0;

xscale = 1
yscale = 1

musicstarted = false;
state = 0;

alarm[0] = 4; //wait before creating appear-smoke, because position will shift 
	//due to image_xscale = 1, in step event
	
attacklist = ds_list_create()
ds_list_add(attacklist, 0,1,2,3)

timer = 0;

eachattacktakes = 120*  8; //how long each attack lasts



beforetheattack = 120* 1; //how long to show the attack name

mad = obj_MadSquare


pickattack = -1;
showattackname = "";