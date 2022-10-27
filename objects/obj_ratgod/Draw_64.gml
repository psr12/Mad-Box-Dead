/// @description Insert description here
// You can write your code in this editor


if musicstarted draw_sprite_ext(sprite_index, 0, sprite_width/2, sprite_height/2 + sin(current_time/250)*10,
xscale, yscale, 0, c_white, 1)


/*
draw_text(300, 50, pickattack)
for (var q = 0; q < ds_list_size(attacklist); q++)
{
	draw_text(300, 70+20*q, attacklist[| q])
}
*/

draw_text_transformed(500, 20, showattackname, 2,2, 0)