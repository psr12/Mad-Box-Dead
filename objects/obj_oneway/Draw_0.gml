/// @description Insert description here
// You can write your code in this editor

//event_inherited()


//{
//draw_sprite_ext(newsprite, image_index, x, y, 
//(sprite_get_width(sprite_index)*image_xscale )/ sprite_get_width(newsprite) ,
//(sprite_get_height(sprite_index)*image_yscale )/ sprite_get_height(newsprite),
//image_angle, image_blend, image_alpha)
//}

draw_sprite_ext(sprite, 0, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)

//draw_self()
draw_sprite_ext(spr_arrow, 0, x, y, 1,1, 90, c_white,image_alpha)


//debugging
/*
draw_text(x, y, bbox_top) 

draw_line(bbox_left-100, top, bbox_right+100, top)

draw_set_alpha(0.5)
draw_set_color(c_black)
draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, false)
draw_set_defaults()