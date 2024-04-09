/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_MadSquare) //spd controls
{
	if obj_MadSquare.state == 99 {
		visible = true
		var spize = sprite_get_width(spr_mousewheelicon) * scale
		var whel = -mouse_wheel_down() + mouse_wheel_up(); //down is negative, up is positive
	
	if mouse_x == clamp(mouse_x, x-xoff, x-xoff+spize) //top wheel
	and mouse_y == clamp(mouse_y, y-yoff, y-yoff+spize)
		{
			cooldown += whel;
			cooldown = clamp(cooldown, 0, 150)
		}
	}
	else visible = false;
	
}