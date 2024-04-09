/// @description Insert description here
// You can write your code in this editor



switch state {
	
	case 0:
	timer++
		x = xstart + 3 * sign(timer mod 8 - 4) 
	if timer > 200 {state++ timer=0}
	break;
	
	case 1: 
		play_sound(snd_ut_heartbreak)
		state++;
		
		image_index = 1;
		break;
	
	case 2:
	timer++;
	if timer > 120 game_restart()
	break;
	
}





