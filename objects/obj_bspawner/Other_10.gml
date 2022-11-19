/// @description Insert description here
// You can write your code in this editor

if !instance_exists(baby)
{
	countdown--;
	if !countdown
	{
		countdown = cdinit;
		baby = instance_create(x, y, obj_balloon)
		baby.initxscale = image_xscale
		baby.inityscale = image_yscale
		baby.image_angle = image_angle
	}
	
}