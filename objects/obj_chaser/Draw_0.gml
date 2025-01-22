/// @description Insert description here
// You can write your code in this editor

//outards 
draw_sprite_ext(spr_chaser2, image_index, x, y, image_xscale*facing+pulse,  image_yscale+pulse, image_angle+outards_spin, color, image_alpha);


//innards
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale*facing,  image_yscale, image_angle, color, image_alpha);


if obj_MadSquare.state == 99{
	
	//draw_self()

	if mouse_x == clamp(mouse_x, bbox_left, bbox_right)
	and mouse_y == clamp(mouse_y, bbox_top, bbox_bottom)
	{
	draw_sprite_ext( spr_mousewheelicon, 0, x, y, scale, scale,  0, c_white, 1)
	//draw_sprite_ext( spr_mousewheelicon, 0, x-xoff, y+yoff, scale, scale, 0, c_white, 1)
	draw_set_color(c_aqua)
	draw_text(x, y - 20, "Lifetime :" + string(deadin) )
	draw_set_defaults();
	}

}