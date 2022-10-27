/// @description Insert description here
// You can write your code in this editor

//if !surface_exists(light) light = surface_create(2000,1500)
if !surface_exists(dark) dark = surface_create(2000,1500)


surface_set_target(dark)
draw_sprite_ext(spr_bg_black, 0, x, y, 9999, 9999, 0, c_white, 0.95);
//surface_set_target(light)
draw_sprite(spr_lenny, 0, 0,0);
gpu_set_blendmode(bm_subtract)
draw_sprite_ext(sprite_index, 0, sur_w/2, sur_h/2, curscale, curscale, 0, c_white, 1)
gpu_set_blendmode(bm_normal)
surface_reset_target()


draw_surface_ext(dark, x-widha,y-heiha, surf_scale, surf_scale, 0, c_white, 1)
