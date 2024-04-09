/// @description Insert description here
// You can write your code in this editor


var rat = instance_place(x, y, obj_MadSquare)
if rat and rat.state == 0
{
	scr_catpaw_rising(x, y, image_angle)
	instance_destroy()
}
if instance_exists(obj_MadSquare) and obj_MadSquare.state == 99
{
	image_alpha = 1;
}
else image_alpha = 0