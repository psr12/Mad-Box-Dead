/// @description step


if state == 0 {
	if place_meeting(x,y-spd, obj_MadSquare)
	{
		y+=spd;
		obj_MadSquare.y += spd
	}
	else y = Approach(y, ystart, spd/2)
	
	if y >= ystart+50 {
		state=1;
		with obj_MadSquare {
			vsp = -30;
		}
	}
	
}

if state == 1 {
	y = Approach(y, ystart, spd*4);
	if y == ystart state = 0;
}