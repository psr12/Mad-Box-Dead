/// @description Insert description here
// You can write your code in this editor



var radius = 400;
var fromx = x - 50
var fromy = y - radius + 50

var i = 0;
repeat(ds_list_size(pills))
{
	i++
	var pillfo = pills[| i-1]
	
	var dir = 270 + i*(90/7) + lineoffset  ;
	var ldx = lengthdir_x(radius+i*30, dir)
	var ldy = lengthdir_y(radius-i*10, dir)
	var sprite = spr_pill
		var rot = pillrotation;
	
	pscale = 1;
	draw_sprite_ext(sprite, pillfo[0], 
	fromx + ldx, fromy + ldy, pscale, pscale, rot + pillfo[1],
	c_white, 1)

}