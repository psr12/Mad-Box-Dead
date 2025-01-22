/// @description Insert description here
// You can write your code in this editor

if mouse_check_button_pressed(mb_left) and state == 0
{
	if mouse_x == clamp(mouse_x, bbox_left, bbox_right)
	&& mouse_y == clamp(mouse_y, bbox_top, bbox_bottom) //if clicked on this
	{
		state = 1;
			target[0] = x
	target[1] = y

	}

}

if state == 1 //setting the target x/y
{
		xstart = x
		ystart = y
	if mouse_check_button_released(mb_left)
	{
		state = 2;
	}
}


if instance_exists(obj_MadSquare) //spd controls
{
	if obj_MadSquare.state == 99 {
		var spize = sprite_get_width(spr_mousewheelicon) * scale
		var whel = -mouse_wheel_down() + mouse_wheel_up(); //down is negative, up is positive
	
	if mouse_x == clamp(mouse_x, x, x+spize) //top wheel
	and mouse_y == clamp(mouse_y, y, y+spize)
		{
			topspeed += whel;
			topspeed = clamp(topspeed, 1, 150)
		}
	}
	
}
