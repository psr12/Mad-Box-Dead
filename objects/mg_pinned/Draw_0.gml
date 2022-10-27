/// @description Insert description here
// You can write your code in this editor

draw_sprite_ext(spr_pinned1, 0, x,y, image_xscale, image_yscale, 0, c_white, 1)
draw_sprite_ext(spr_pinned2, 0, x-40, y+50, image_xscale, image_yscale, image_angle + headrot, c_white, 1) 
draw_sprite_ext(spr_pinned3, 0, x,y, image_xscale, image_yscale, 0, c_white, 1)


var nscale = 2;
draw_sprite_ext(spr_needle, 0, needlex, needley, nscale, nscale, 0, c_white, 1)