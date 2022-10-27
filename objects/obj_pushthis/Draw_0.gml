/// @description Insert description here
// You can write your code in this editor

image_alpha = stalpha

var dx = x -sprite_width/2
var dy = y -sprite_height/2

var butscalex = image_xscale + 3 + bulge
var butscaley = image_yscale + 3 + bulge

//button
draw_sprite_ext(sprite, 0, x,y,butscalex, 
butscaley, image_angle, c_white, 1);

draw_self();

//monitor
draw_sprite_ext(spr_monitor, 0, dx, dy, image_xscale, image_yscale, image_angle, c_white, 1);
