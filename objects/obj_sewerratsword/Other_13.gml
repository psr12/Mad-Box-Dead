/// @description 'step'
// You can write your code in this editor

// Inherit the parent event

switch state {

case 0:
	if place_meeting(x,y+1, obj_cheese) {state = 1; 
		scr_changeseq(sq_mb_swordidle, scale)
		}
	break;

case 1:
	if !countdown
	{
		state++;
		scr_changeseq(sq_mb_swordstart, scale)
	}
break;

case 2:
	if countdown == -3 {state++;  
		scr_changeseq(sq_mb_sword, scale)
		}
break;

case 3:
	hsp = (600/30)*facing; state++;
break;

case 4:

	if countdown == -5 {
		hsp = 0; state = 0;
		facing = -facing; 
		countdown = 4;
	}
	break;
	

}

event_inherited()
