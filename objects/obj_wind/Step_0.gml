/// @description Insert description here
// You can write your code in this editor




if instance_exists(obj_MadSquare) //spd controls
{
	if obj_MadSquare.state == 99 {
		var spize = sprite_get_width(spr_mousewheelicon) * scale
		var whel = -mouse_wheel_down() + mouse_wheel_up(); //down is negative, up is positive
		//whel *= 0.1;
		if keyboard_check(vk_shift) {whel *= 2}
		
	if mouse_x == clamp(mouse_x, x-xoff, x-xoff+spize) //top wheel
	and mouse_y == clamp(mouse_y, y-yoff, y-yoff+spize)
		{
			spd += whel;
			spd = clamp(spd, 0, 150)
		}
	}
	
}

if place_meeting(x,y,obj_MadSquare)
{
	if obj_MadSquare.state != 0 {exit}
	var touching = false;
	with obj_MadSquare {
		if place_meeting(x,y+1, obj_cheese) touching = true;
	}
	
	if !touching { //vertical is stopped if on ground, hori isnt'
		obj_MadSquare.gustv = lengthdir_y(spd, image_angle)
	}
	
	obj_MadSquare.gusth = lengthdir_x(spd, image_angle)

}
