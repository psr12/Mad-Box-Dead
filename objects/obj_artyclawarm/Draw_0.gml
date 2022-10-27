/// @description Insert description here
// You can write your code in this editor


if !instance_exists(target) exit
var size = 1;


for (var i = 0; i < balls; i++)
{
	
	var dx = lerp(x, target.x, (1/balls) * i )
	var dy = lerp(y, target.y, (1/balls) * i )
	
	draw_sprite_ext(spr_clawpalm, 0, dx, dy, size, size, 0, c_white, image_alpha)
	
}
