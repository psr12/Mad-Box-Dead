// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function simple_collision(){
 	vsp += grav;
	
	if place_meeting(x,y+vsp, obj_cheese) //vertical collision
	{
		while !place_meeting(x,y+sign(vsp), obj_cheese)
		{
			y += sign(vsp)
		}
		vsp = 0;
	}
	y += ( vsp )
	
	if place_meeting(x+hsp,y, obj_cheese) //vertical collision
	{
		while !place_meeting(x+sign(hsp),y, obj_cheese)
		{
			x += sign(hsp)
		}
		hsp = 0;
	}
	x += ( hsp )

}

function simple_collision_setup() {
	vsp = 0
	hsp = 0
	grav = 0.8
}