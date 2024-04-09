/// @description Insert description here
// You can write your code in this editor


	draw_line_width_colour(xstart, ystart, target[0], target[1], 5, c_lime, c_fuchsia)


event_inherited()


if instance_exists(obj_MadSquare) and obj_MadSquare.state == 99
{

draw_set_font(Font1)
draw_set_color(c_maroon)
switch state
	{
		case 0: draw_ctext_transformed(x, y, "Move me", 4) break;
		
		case 1: draw_ctext_transformed(x, y, "Moving", 4) break;
		
		case 2: draw_ctext_transformed(x, y, "Ready", 4) break;
	}
draw_set_defaults()
	
}

draw_sprite_ext(spr_arrow, 0, x, y, 1, 1, 0, c_white, 1)

//draw_ctext_transformed(x, y, string(target[0]) + ", " + string(target[1]) , 4)