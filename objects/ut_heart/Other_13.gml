/// @description 'step'

var leftright = input_check( global.keyRight) - input_check( global.keyLeft)  
if leftright != 0 wasfacing = leftright

spd = base_spd + dash_spd;
var ver = ( input_check( global.keyDown) - input_check( global.keyUp)   )  
var hor = ( input_check( global.keyRight) - input_check( global.keyLeft)  )
if ver != 0 and hor != 0 spd *= 0.707
y +=  spd * ver
x += spd * hor

dash_spd = lerp(dash_spd, 0, 0.2); 


//hsp += leftright * base_spd //+= so doesn't overwrite dash inputs
//vsp += ver * base_spd
//x += hsp;
//y += vsp;


//hsp = zlerp(hsp, 0.2); 
//vsp = zlerp(vsp, 0.2); 


itimer--;
if itimer mod 8 > 4 image_alpha = 0;
else image_alpha = 1;

if !itimer and place_meeting(x, y, UT_PAR_BULLET) {
	itimer = invuln_time;	
	play_sound(snd_stab, 1)
	ut_player.hp-= 2;
}

