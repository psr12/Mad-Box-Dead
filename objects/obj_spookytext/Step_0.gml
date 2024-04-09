/// @description Insert description here
// You can write your code in this editor

if state == 0{ //text appears
	timer--;
	alpha = Approach(alpha, 1, 1/maxtimer);
	if !timer  or input_anykey() {state++; timer= holdtime; alpha = 1;}
}


if state == 1 { //text is fully vis
	timer--;
	if !timer or input_anykey()
	{state++; timer = maxtimer; 
				with obj_cutscenehandler{wait = false; }
		}
}

if state == 2 { //text disappears
	timer--;
		alpha = Approach(alpha, 0,  1/maxtimer);
		if !timer	instance_destroy()

}


changeby = lerp(changeby, 0, 0.01)
xx += changeby;






