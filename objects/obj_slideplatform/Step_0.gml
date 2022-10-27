/// @description Insert description here
// You can write your code in this editor
if image_angle <0 image_angle += 360
image_angle = image_angle mod 360

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

if place_meeting(x,y-1,obj_MadSquare)
{	
	var angle = image_angle
	var spee = spd;
	var app = 99; //only instant works, otherwise.... bounces on vertical slides?
	if obj_MadSquare.state != 0 or obj_MadSquare.getoffslide {exit}
	
	with obj_MadSquare {
	hsliding = Approach(hsliding, lengthdir_x(spee, angle), app)
	vsliding = Approach(vsliding, lengthdir_y(spee, angle), app)
	
	angle = angle mod 180

				if angle >90 angle -= 180
				angel = angle
				layer_sequence_angle(seq, angel)
	}
}

