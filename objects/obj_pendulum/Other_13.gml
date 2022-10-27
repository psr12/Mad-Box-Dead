/// @description 'step'


if !notyet
{
image_angle = 0 + swing;
swing = lerp(swing, facing*orange, 0.10)
}


var xpos = x + lengthdir_x(sprite_height/2-radius, image_angle-90)
var ypos = y + lengthdir_y(sprite_height/2-radius, image_angle-90)
if collision_circle(xpos, ypos, radius, obj_MadSquare, false, false)
{
	scr_killmadrat()
}
