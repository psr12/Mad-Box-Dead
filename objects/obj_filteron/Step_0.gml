/// @description Insert description here
// You can write your code in this editor



if state == 0 {
if place_meeting(x, y, obj_MadSquare)
	{
		layer_enable_fx(laystring, true);
		state = 1;
	}
}


if state == 1 {
	if !place_meeting(x, y, obj_MadSquare)
	{
		layer_enable_fx(laystring, false);
		state = 0;
	}
}
