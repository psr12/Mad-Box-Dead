/// @description step


if instance_exists(chip) {
chip.y = bbox_top-50;
}

if state == 0 {
	
	vsp += grav;
	y += vsp
	if place_meeting(x, y-sprite_height/2, obj_jumpywater) 
	{state = 1; 
	}
}


if state == 1 {
if (     !place_meeting(x,y-1, obj_MadSquare) and !place_meeting(x,y-1, par_mobrat) 
and  !place_meeting(x,y-1, obj_mobratvuln)     ) and
	place_meeting(x, y-sprite_height/2, obj_jumpywater)
	{
		y--;
	}
	
	vsp = Approach(vsp, 0, 0.5);
	y += vsp
}


if state == 2 {
	
	if !place_meeting(x,y-sprite_height/3, obj_cheese) y += 1;
}