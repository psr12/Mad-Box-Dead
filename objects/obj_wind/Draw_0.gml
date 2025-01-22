/// @description Insert description here
// You can write your code in this editor

if spd != 0
{

var x1 = x + lengthdir_x(sprite_height/2, image_angle+90); //TOP CENTER  of box
var y1 = y + lengthdir_y(sprite_height/2, image_angle+90) 

draw_set_color(c_white)
//draw_set_alpha(0.5)

var sph = sprite_get_height(sprite_index)*image_yscale
var spw = sprite_get_width(sprite_index)*image_xscale
repeat(max(1, sph/350) ) {
var botdist = random_range(0, sph)

var x2 = x1 + lengthdir_x(botdist, image_angle+270) //random point down the middle, vertically
var y2 = y1 + lengthdir_y(botdist, image_angle+270)

var x3 = x2 + lengthdir_x( spw/2 , image_angle+180)//random point on left side
var y3 = y2 + lengthdir_y( spw/2, image_angle+180)

var fuckx = x3+ lengthdir_x(spw, image_angle) //draw a line from the left side to the right side
var fucky = y3+lengthdir_y(spw, image_angle)
	draw_line(x3, y3, fuckx, fucky )
	}
	
	draw_set_defaults()
	
}


if obj_MadSquare.state == 99{
	
	//draw_set_alpha(0.5)
	//draw_self()
	//draw_set_defaults();

	if mouse_x == clamp(mouse_x, bbox_left, bbox_right)
	and mouse_y == clamp(mouse_y, bbox_top, bbox_bottom)
	{
	draw_sprite_ext( spr_mousewheelicon, 0, x-xoff, y-yoff, scale, scale,  0, c_white, 1)
	//draw_sprite_ext( spr_mousewheelicon, 0, x-xoff, y+yoff, scale, scale, 0, c_white, 1)
	draw_set_color(c_purple)
	draw_text(x, y - 20, "speed :" + string(spd) )
	draw_set_defaults();
	}

}
