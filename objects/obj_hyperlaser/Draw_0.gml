/// @description Insert description here
// You can write your code in this editor



draw_set_color(c_yellow)
draw_triangle(x, y, x-700, y+1000, x+700, y+1000, false)
draw_set_blend_mode( bm_subtract)
var scale = 5
if instance_exists(obj_blocklaser) draw_sprite_ext(spr_node, 0, obj_blocklaser.x, obj_blocklaser.y, 
scale, scale, 0, c_white, 1)

draw_set_blend_mode(bm_normal)
draw_set_defaults()



