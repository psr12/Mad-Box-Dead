/// @description on beat


timeleft--;

if timeleft < 0{
	
	obj_microgameshandler.win = win
	obj_microgameshandler.state = 0;
	alarm[0] = 50;
	
}