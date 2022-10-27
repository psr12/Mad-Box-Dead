	/// @description Insert description here
// You can write your code in this editor


if state == timetill-1 {shake = 10;}
if state == timetill {
	shake = 0; 
	var gettox = xstart + lengthdir_x(dist, image_angle)
	var gettoy = ystart + lengthdir_y(dist, image_angle)
	x = Approach(x, gettox, spd)
	y = Approach(y, gettoy, spd)
	
	if place_meeting(x,y, obj_MadSquare) and obj_MadSquare.state == 0
	{obj_MadSquare.enemy_collision_timer = -1;}

	if round(x) == round(gettox) and round(y) == round(gettoy) {state = 0;
	
	if type == 0 image_angle += 180; 
	if type == 1 image_angle += 90; 
	if type == 2 image_angle -= 90; 
	
	xstart = x; ystart = y;
	}
}
