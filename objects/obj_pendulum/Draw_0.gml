/// @description Insert description here
// You can write your code in this editor



draw_self()

if instance_exists(obj_MadSquare)
{
	
	if obj_MadSquare.state != 0{

		var xpos = x + lengthdir_x(sprite_height/2-radius, image_angle-90)
		var ypos = y + lengthdir_y(sprite_height/2-radius, image_angle-90)
		draw_circle(xpos, ypos, radius, false)

	}
	
}


