/// @description 'step'
// You can write your code in this editor

// Inherit the parent event
event_inherited();


switch state {

case 0:
	
	if countdown == 7 {scr_changeseq(sq_mb_vuln, scale) state++
		

		}
break;
case 1:
	if countdown == 0
	{
		var tope = type; //for with
		var baby = instance_create(x,y, type)
		with baby {countdown = 3; facing = -other.facing;
		state = 1; 
		if  tope != obj_mobratsword scr_changeseq(sq_mb_idle,scale) 
		else scr_changeseq(sq_mb_swordidle,scale) 
		}
		instance_destroy()
	}
break;
}


#region collision

vsp+=grav;

if place_meeting(x+hsp, y, obj_cheese)
{
	while !place_meeting(x+sign(hsp), y, obj_cheese)
	{x+=sign(hsp)}
	hsp = 0;
}
x += hsp
if place_meeting(x, y+vsp, obj_cheese)
{
	while !place_meeting(x, y+sign(vsp), obj_cheese)
	{y += sign(vsp)}
	vsp = 0;
}

y += vsp

#endregion

#region seq handling

layer_sequence_x(seq, x)
layer_sequence_y(seq, y)

layer_sequence_xscale(seq, facing*scale)

#endregion




if y > room_height event_user(4);
