/// @description Insert description here
// You can write your code in this editor


surface_set_target(ut_player.surface)

var sulge = bulge*2
draw_sprite_ext(sprite_index, 0, x, y, sulge, sulge, 0, c_white, 1)

//draw_ctext(x, y, hits)

var rscale = 1
var rx = x-170
var ry = y-80
draw_sprite_ext(spr_ut_inarow, 0, rx, ry, rscale, rscale, 0, c_white, 1)

draw_ctext(rx, ry, hits)


surface_reset_target()





