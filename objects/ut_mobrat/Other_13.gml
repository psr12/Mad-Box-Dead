/// @description Insert description here
// You can write your code in this editor


if state == 0 {} //not my turn

if state < 999 with seqdummy layer_sequence_speedscale(seq, obj_recorder.spitch)


switch state {

case 1: //say something
	saytext = "..."
	scr_textbox(x+300, y, saytext, snd_collect, "")
	state = 1.1;
	break;
case 1.1: //textbox up
	timer++;
	if timer > 240 or !instance_exists(obj_textbox){
		instance_destroy(obj_textbox);
		saytext = "";
	state = 1.9;
	}
	break;
	
case 1.9: //choose attack
		state = 2;
	break;
	
case 2: //my turn is triggered
	timer++;
	
	if timer > 120*4 {state=86}
	
	if timer mod 60 == 0 { //spawn bullet
		var lr = 1
		if timer mod 120 == 0 lr = -1
		instance_create_layer( x + lr*200,
		choose( 200, 400, 600),bullet_layer, ut_bullet )
	}
break;

case 86:  //cleanup
	instance_destroy(UT_PAR_BULLET)	
	state = 0;
	timer=0;
	ut_player.state++;
break; 



}


// Inherit the parent event
event_inherited();

