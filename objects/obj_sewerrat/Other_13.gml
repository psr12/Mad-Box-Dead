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
		scr_changeseq(sq_mb_turnaround, scale)
		if distance_to_object(obj_MadSquare) < 1000 play_sound(snd_clockwork, 1)
	}
break;

case 2:
	if countdown == -3 {state++;  
		scr_changeseq(sq_mb_flyingkick, scale)
		}
break;

case 3:
	hsp = (400/60)*facing; state++;
break;

case 4:
	if countdown == -5 {
		hsp = 0; state = 0;
		facing = -facing; 
		countdown = 4;
	}
	break;
	
//case 5:
//	if countdown == -10
//	{
//		countdown = 3; facing = -facing;
//		state = 1;
//	}
//break;
}

event_inherited()
