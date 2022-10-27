/// @description Insert description here
// You can write your code in this editor


if keyboard_check_pressed(vk_space)  { 
	
	sprite_index = sprite
	top = bbox_top; 
	sprite_index = -1

}//reall janky, but...
	// ^^^ so top is only aligned once player is finished resizing and moving


if instance_exists(obj_MadSquare) 
{
	var buffer = 10; //so can more easily go from one to another via dashing, instead of falling through
	if obj_MadSquare.state == 99 exit
	if obj_MadSquare.bbox_bottom > top + buffer //if mad rat is below the top of this platform
	{
		sprite_index = -1
	}
	if obj_MadSquare.bbox_bottom < top //if mad rat is above platform
	{
		sprite_index = sprite
	}
	
}