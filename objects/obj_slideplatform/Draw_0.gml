/// @description Insert description here
// You can write your code in this editor
	draw_self()


if obj_MadSquare.state ==99{
	
	if mouse_x == clamp(mouse_x, bbox_left, bbox_right)
	and mouse_y == clamp(mouse_y, bbox_top, bbox_bottom)
	{
	draw_sprite_ext( spr_mousewheelicon, 0, x-xoff, y-yoff, scale, scale,  0, c_white, 1)
	//draw_sprite_ext( spr_mousewheelicon, 0, x-xoff, y+yoff, scale, scale, 0, c_white, 1)
	draw_set_color(c_purple)
	draw_text(x, y - 20, "speed :" + string(spd) )
	draw_set_defaults();
	}

}

