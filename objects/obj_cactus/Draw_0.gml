/// @description Insert description here
// You can write your code in this editor

var amnt = bounce*0.05
var boffset  = sprite_get_height(sprite_index) * (image_yscale+amnt*abs(image_xscale)) - sprite_height

draw_sprite_ext(sprite_index, image_index, x, y+boffset/2, 
image_xscale, image_yscale-amnt*abs(image_xscale),
image_angle, image_blend, image_alpha)

if obj_MadSquare.state == 99{
	
	//draw_self()

	if mouse_x == clamp(mouse_x, bbox_left, bbox_right)
	and mouse_y == clamp(mouse_y, bbox_top, bbox_bottom)
	{
	draw_sprite_ext( spr_mousewheelicon, 0, x, y, scale, scale,  0, c_white, 1)
	//draw_sprite_ext( spr_mousewheelicon, 0, x-xoff, y+yoff, scale, scale, 0, c_white, 1)
	draw_set_color(c_aqua)
	draw_text(x, y - 20, "cooldown :" + string(topcooldown) )
	draw_set_defaults();
	}

}