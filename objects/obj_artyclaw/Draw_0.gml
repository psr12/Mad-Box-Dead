/// @description Insert description here
// You can write your code in this editor


var tolscale  = 1

//draw_line_width(x,y, base[0], base[1], linewid);

if scalpel {
	draw_sprite_ext(spr_scalpel, 0, x,y, 3, 3, 170, c_white, 1)
}

//draw palm
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale+tolscale, image_yscale+tolscale, rot, image_blend, image_alpha)

//3 claw bases
for (var i = 1; i <= 3; i++)
{
	var angle = rot + 120*i
	var dx = x + lengthdir_x(32, angle)
	var dy = y + lengthdir_y(32, angle)
	draw_sprite_ext(spr_clawbase, image_index, dx, dy, 1+tolscale, 1+tolscale, angle, image_blend, image_alpha)
}
//claw ends
for (var i = 1; i <= 3; i++)
{
	var angle = rot + 120*i
	var dx = x + lengthdir_x(32+16, angle)
	var dy = y + lengthdir_y(32+16, angle)
	draw_sprite_ext(spr_claw, image_index, dx, dy, 1+tolscale, claw_clamp+tolscale*sign(claw_clamp), angle-90, image_blend, image_alpha)
}
/*
draw_circle(targetx, targety, 10, false);

draw_text(x,y,move)
