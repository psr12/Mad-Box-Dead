/// @description Insert description here
// You can write your code in this editor

if spd != 0
{

var x1 = x + lengthdir_x(sprite_height/2, image_angle+90); //TOP CENTER  of box
var y1 = y + lengthdir_y(sprite_height/2, image_angle+90) 

draw_set_color(c_white)
//draw_set_alpha(0.5)

repeat(max(1, sprite_height/350) ) {
var botdist = random_range(0, sprite_height)

var x2 = x1 + lengthdir_x(botdist, image_angle+270) //random point on center line
var y2 = y1 + lengthdir_y(botdist, image_angle+270)

var x3 = x2 + lengthdir_x( sprite_width/2 , image_angle+180)//random point on borrom side
var y3 = y2 + lengthdir_y( sprite_width/2, image_angle+180)

var fuckx = x3+ lengthdir_x(sprite_width, image_angle)
var fucky = y3+lengthdir_y(sprite_width, image_angle)
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
