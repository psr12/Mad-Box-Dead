/// @description Insert description here
// You can write your code in this editor

mask_index = spr_blank;

if instance_exists(obj_MadSquare)
{
	px = obj_MadSquare.x
	py = obj_MadSquare.y
}

if state == 4
{
	brightness = Approach(brightness, 0.5, (0.5/game_get_speed(gamespeed_fps))/2 )
	if brightness == 0.5 {	with obj_recorder event_user(8); state=5; }	
}
