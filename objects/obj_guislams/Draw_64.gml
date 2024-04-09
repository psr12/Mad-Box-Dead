/// @description Insert description here
// You can write your code in this editor
//bbox_right_fix = x + 100
//bbox_left_fix = x - 100
var xsca = 1.2
var ysca = 1.2
var alpha = obj_recorder.recalpha
draw_sprite_ext(spr_yellowslams, image_index, obj_recorder.bbox_left_fix,
obj_recorder.ystart, xsca, ysca, 0, c_white, alpha) 

draw_sprite_ext(spr_yellowslams, image_index, obj_recorder.bbox_right_fix,
obj_recorder.ystart, -xsca, ysca, 0, c_white, alpha) 
