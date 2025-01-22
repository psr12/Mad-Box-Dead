/// @description  'step'
// Inherit the parent event
event_inherited();

//collision ect

extra = zlerp(extra, 0.15)
bounce = Approach(bounce, 0, 0.05)
hsp = topspeed

vsp += grav;
if place_meeting(x,y+vsp, obj_cheese) //vertical collision
{
	while !place_meeting(x,y+sign(vsp), obj_cheese)
	{
		y += sign(vsp)
	}
	vsp = 0;
	//stopcol = true;
}
y += floor( vsp )


		var stepup = 0; //check for space above wall
		while (place_meeting(x+hsp, y-stepup, obj_cheese) && stepup < 10) stepup+=2;
	
if place_meeting(x+hsp,y, obj_cheese) //vertical collision
{
	
	if place_meeting(x+hsp,y-stepup, obj_cheese) //check again, if can't vault wall
		{
			while !place_meeting(x+sign(hsp),y, obj_cheese)
			{
				x += sign(hsp)
			}
			turnaround = 1
			hsp = 0;
		}
		else //there is space, above the wall
		{		
			y -= stepup; //move up, if there is space 10 pixels above where moving
		}
	//stopcol = true;
}
x += hsp //* sign(image_xscale)

