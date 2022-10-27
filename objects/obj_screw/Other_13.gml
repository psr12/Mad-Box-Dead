/// @description Insert description here
// You can write your code in this editor



length = sprite_height;

if justhit
{
	movetimer = max_movetime;
	justhit= false;
}

if movetimer and cur_length < length {
	image_speed = 1;
	y -= moveby;
	obj_MadSquare.y -= moveby;
	cur_length += moveby;
	movetimer--;
	
	//if cur_length >= length {
	//	scr_deadringer()
	//	instance_destroy()
	//}
}
else image_speed = 0;


