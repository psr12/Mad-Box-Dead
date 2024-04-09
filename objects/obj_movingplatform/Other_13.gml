/// @description Insert description here
// You can write your code in this editor


if place_meeting(x,y-10, obj_MadSquare) && state == 2 and obj_MadSquare.state == 0
{
	state = 4
	xstart = x; ystart = y;
}


if state == 4  //falling if state > 0 and no countdown left
{	
	// Approach target x / y
	var thisx =  lengthdir_x(topspeed, point_direction(xstart, ystart, target[0], target[1]) ) 
	var thisy = lengthdir_y(topspeed, point_direction(xstart, ystart, target[0], target[1]) ) 
	var absx = abs(thisx)
	var absy = abs(thisy)
	x = Approach(x, target[0], absx)
	y = Approach(y, target[1], absy)
	
	if (place_meeting(x+absx, y, obj_MadSquare) or place_meeting(x-absx, y, obj_MadSquare)
	or place_meeting(x+absx, y-max(absy, 22), obj_MadSquare)) //standing on top
	and  x != target[0]
	{
		obj_MadSquare.x += thisx
	}
	if (place_meeting(x, y+absy, obj_MadSquare) or place_meeting(x, y-absy, obj_MadSquare)
	or place_meeting(x+absx, y-max(absy, 22), obj_MadSquare)) //standing on top
	and  y != target[1]
	{
		obj_MadSquare.y += thisy
	}
	

	
}

//if instance_exists(obj_MadSquare) //reset on respawn, or after certain distance
//{
//	if state && (distance_to_point(xstart, ystart) > 4000 //only if mad rat isn't there
//	|| obj_MadSquare.state == 90 ) && !place_meeting(xstart, ystart, obj_MadSquare)
//	{
//		x = xstart; y = ystart;
//		state=0;
//		countdown = 2;
//		vsp=0;
//	}
//}