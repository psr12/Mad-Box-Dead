/// @description instant activation
if !timeuntil {image_alpha = 1; 
	if place_meeting(x,y, obj_MadSquare) and obj_MadSquare.state == 0
	{obj_MadSquare.enemy_collision_timer = -1;}
	
	}