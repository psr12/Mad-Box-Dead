/// @description Insert description here
// You can write your code in this editor


if obj_MadSquare.state != 0 {
	draw_set_alpha(0.5)
	draw_self()
	draw_set_defaults();

	if mouse_x == clamp(mouse_x, bbox_left, bbox_right)
	and mouse_y == clamp(mouse_y, bbox_top, bbox_bottom)
	{
		draw_sprite_ext( spr_mousewheelicon, 0, x-xoff, y-yoff, scale, scale,  0, c_white, 1)
		draw_set_color(c_purple)
		draw_text(x, y - 20, "Speed=" + string(spd) )
		draw_set_defaults();
	}
	 
	

}