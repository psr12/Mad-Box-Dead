/// @description Insert description here
// You can write your code in this editor

if notyet {
	top = bbox_top; //has to save, bbox_top becomes y when no sprite

	inityscale = image_yscale;
	yscale = image_yscale;
}


woah--;

if instance_exists(obj_MadSquare) and obj_MadSquare.state == 0 and !notyet
{
	var topbuffer = 8
	if obj_MadSquare.bbox_bottom > top+topbuffer //if mad rat is below the top of this platform
	|| woah > 0 //or if counter is at 0
	{
		sprite_index = -1
	}
	if obj_MadSquare.bbox_bottom < top+topbuffer //if mad rat is above platform
	&& woah<=0 //else would be negated by mad rat being on top
	{
		sprite_index = sprite
	}
	
}

yscale = lerp(yscale, inityscale*isblue, 0.1);