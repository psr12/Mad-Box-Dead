/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
if instance_exists(obj_MadSquare)
{	
	if distance_to_object(obj_MadSquare) < range {active = true;}
	if active {
		main_rot = point_direction(x,y, obj_MadSquare.x, obj_MadSquare.y) + 270;
		x += lengthdir_x(movethis, main_rot)
		y += lengthdir_y(movethis, main_rot)
		main_rot = point_direction(x,y, obj_MadSquare.x, obj_MadSquare.y) + 270;
		}
}

arot += 2+active*3;