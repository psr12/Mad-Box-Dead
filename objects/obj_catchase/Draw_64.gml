/// @description Insert description here
// You can write your code in this editor

draw_set_font(Font1);
var credsize = array_length(credits)
draw_set_color(c_white)
for (var i = -1; i<credsize; i++)
{
	if i == -1 {draw_sprite(spr_logo, 0, 1366/2, credits_offset+150*i) }
	else draw_ctext(1366/2, credits_offset+150*i, credits[i])
}

draw_set_defaults()
