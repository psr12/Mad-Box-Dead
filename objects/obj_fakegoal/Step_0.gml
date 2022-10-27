/// @description Insert description here
// You can write your code in this editor

//glow, twice per second
asdf+= 1/( game_get_speed(gamespeed_fps) /2);



if state == 0 image_alpha = abs( sin(asdf ) ) //glowing

//end level
if place_meeting(x,y,obj_MadSquare) and state = 0
{
	scr_deadringer(4, 120)
	instance_destroy()
}
