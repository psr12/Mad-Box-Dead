/// @description beat
// Inherit the parent event
event_inherited();
if instance_exists(obj_MadSquare) 
{
	if distance_to_object(obj_MadSquare) < range && deadin //mad rat in range
	and obj_MadSquare.x > x
	{active = true; color = c_white;}
	
	if active
	{
		facing = sign(obj_MadSquare.x - x)
		
		tarx1 = tarx2
		tary1 = tary2
		
		tarx2 = obj_MadSquare.x
		tary2 = obj_MadSquare.y
	
		backx = tarx2
		backy = tary2
	
		deadin--;
		if deadin <=0 {active = false; color = c_gray; }
	}
}


pulse = maxpulse; //pump up blue circle
