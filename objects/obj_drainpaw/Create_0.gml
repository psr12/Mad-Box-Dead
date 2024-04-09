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

countdown = 2;

//part_type_life() set at spawn, link to TIME

image_alpha = 1;

scale = 4;
image_xscale = scale
image_yscale = scale

/*
if instance_exists(obj_MadSquare)
{
	xdist = x - obj_MadSquare.x
	ydist = y - obj_MadSquare.y
}