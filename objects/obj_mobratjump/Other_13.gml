/// @description 'step'
// You can write your code in this editor

// Inherit the parent event


switch state {

case 0:
	if place_meeting(x,y+1, obj_cheese) {state = 1; 
		scr_changeseq(sq_mb_idle, scale)
		}
	break;

case 1:
	if !countdown
	{
		state++;
		scr_changeseq(sq_mb_jumpstart, scale)
	}
break;

case 2:
	if countdown == -3 {state++;  
		scr_changeseq(sq_mb_flyingkick, scale)
		if distance_to_object(obj_MadSquare) < 1000 play_sound(snd_jump,1)
		vsp = -10;
		}
break;

case 3:
	hsp = (400/60)*facing; state++;
break;

case 4:
	if countdown == -5 {
		hsp = 0; state++;
		var baby = instance_create(x,y,obj_mobratvuln)
		baby.facing = facing; 
		baby.type = object_index; 
		instance_destroy()
		//scr_changeseq(sq_mb_idle, scale)
	}
	break;
	

}

event_inherited();


