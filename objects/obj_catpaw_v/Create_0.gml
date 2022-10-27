/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

actiontime = 60;

//curve 
curve = ani_speedupdlowdown;
curvepos = 0;
curvespeed = 1/actiontime;


spd = 50;

countdown = 3;

shine = part_type_create()
part_type_alpha3(shine, 0, 1, 0)
part_type_shape(shine, pt_shape_spark)
part_type_color1(shine, c_white)
//part_type_life() set at spawn, link to TIME

image_alpha = 0;

scale = 3;
image_xscale = scale
image_yscale = scale


if instance_exists(obj_MadSquare)
{
	xdist = x - obj_MadSquare.x
	ydist = y - obj_MadSquare.y
}