/// @description Insert description here
// You can write your code in this editor

//glow, twice per second
asdf+= 1/( game_get_speed(gamespeed_fps) /2);
image_alpha = abs( sin(asdf ) )

//end level
if place_meeting(x,y,obj_MadSquare) 
{
	if obj_MadSquare.state == 99 exit
	with obj_recorder event_user(8)
	instance_destroy()
}