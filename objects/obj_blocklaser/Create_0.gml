/// @description Insert description here
// You can write your code in this editor



image_alpha = 0.2


image_scale(3)
var facing = sign(obj_ratgodboss.x - x)
scr_makedummy(x, y, ch_spin, ch_blocking, facing, 1)
scr_changevar(obj_seqdummy, 0, "float", true)

alarm[0] = 2

failed = false;

obj_recorder.corner_heart_overwrite = seq_blank