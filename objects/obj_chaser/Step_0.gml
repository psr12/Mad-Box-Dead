/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_MadSquare) //spd controls
{
	if obj_MadSquare.state == 99 {
		var spize = sprite_get_width(spr_mousewheelicon) * scale
		var whel = -mouse_wheel_down() + mouse_wheel_up(); //down is negative, up is positive
	
	if mouse_x == clamp(mouse_x, x, x+spize) //top wheel
	and mouse_y == clamp(mouse_y, y, y+spize)
		{
			deadin += whel;
			deadin = clamp(deadin, 1, 150)
		}
	}
	
}