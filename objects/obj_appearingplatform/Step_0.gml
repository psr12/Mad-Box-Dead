/// @description Insert description here
// You can write your code in this editor

woah--;

if instance_exists(obj_MadSquare)
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