/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if instance_exists(obj_MadSquare)
{
	if distance_to_object(obj_MadSquare) < range
	{
		spud += 0.5
		move_towards_point(obj_MadSquare.x, obj_MadSquare.y, spud)
		if place_meeting(x,y,obj_MadSquare) 
			{instance_destroy(); play_sound(snd_collect, .95 + random(.1) )
				obj_MadSquare.battery_charge += obj_MadSquare.pickup_strength;
				obj_MadSquare.battery_bulge = 0.3;
				}
	}
	else if speed != 0 {
		x = lerp(x, obj_MadSquare.x, 0.6)
		y = lerp(y, obj_MadSquare.y, 0.6)
	}
}
image_angle += spud