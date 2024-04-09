/// @description Insert description here
// You can write your code in this editor


timer=0;

baby = instance_create(x, y, obj_tunevuln);


state = 0;

var facing = sign(obj_ratgodboss.x - x)
seqdummy = scr_makedummy(x, y, ch_spin, ch_boost, facing, 1)
seqdummy.float = true


with obj_recorder corner_heart_overwrite = seq_blank
