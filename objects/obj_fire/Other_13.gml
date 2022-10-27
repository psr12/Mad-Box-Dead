/// @description  'step'
// Inherit the parent event
event_inherited();

//collision ect

if !stopcol and !place_meeting(x,y+vsp, obj_cheese){

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

}