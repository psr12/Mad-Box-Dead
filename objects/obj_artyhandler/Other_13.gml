/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if state == 11
{
	var psp = 0.005
	with lclaw path_position += psp
	with rclaw path_position -= psp
	
}
if state == 12
{
	var psp = 0.0003
	with lclaw path_position += psp
	with rclaw path_position += psp
}

if startclaw {

	//scr_artymoves(rclaw, mouse_x+100, mouse_y)
	//scr_artymoves(lclaw, mouse_x-300, mouse_y)

	
	//if keyboard_check(vk_control)
	//{
	//	scr_artyturns(rclaw, 2)
	//	scr_artyturns(lclaw, -2)
	//}
	
}


