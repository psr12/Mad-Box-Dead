/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_MadSquare)
{

	if obj_MadSquare.state == 0
	{
	
		if place_meeting(x,y,obj_MadSquare) {
			obj_recorder.spitch = flerp(obj_recorder.spitch, spd, 0.5)
			if obj_recorder.spitch == spd instance_destroy()
		}
	}



		if obj_MadSquare.state == 99 {
			var spize = sprite_get_width(spr_mousewheelicon) * scale
			var whel = -mouse_wheel_down() + mouse_wheel_up(); //down is negative, up is positive
			whel *= 0.01;
			if keyboard_check(vk_shift) || keyboard_check(vk_control) {whel *= 2}
		
		if mouse_x == clamp(mouse_x, x-xoff, x-xoff+spize) //top wheel
		and mouse_y == clamp(mouse_y, y-yoff, y-yoff+spize)
			{
				spd += whel;
				
			}
		}
	
}