/// @description Insert description here
// You can write your code in this editor

draw_self()
//draw_text(x,y, paired)
if victim { if !instance_exists(victim) exit}

if state == 1
{
	draw_line_width_color(x, y, mouse_x, mouse_y, 19, image_blend, image_blend);
	
	if victim {
		draw_sprite_ext(victim.sprite_index, 0, victim.x, victim.y, 
		victim.image_xscale*1.1, victim.image_yscale*1.1, 
		victim.image_angle, image_blend, 1)
	}
}

if paired != noone {}
else exit

if state == 0
{
		draw_line_width_color(x, y, paired[0], paired[1], 19, image_blend, image_blend);

		draw_sprite_ext(asset_get_index(paired[8]), 0, paired[0], paired[1], 
		paired[5], paired[6], 
		paired[7], image_blend, 1)
}