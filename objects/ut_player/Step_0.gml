/// @description Insert description here
// You can write your code in this editor


hp = clamp(hp, 0, maxhp)
if hp <= 0 {
	
	instance_create(ut_heart.x, ut_heart.y, ut_obj_die)
	room_goto(ut_die) 
	audio_stop_all()
	obj_recorder.state = 99;
	
}//ha ha

obj_recorder.recalpha = recalpha + 0.2

switch state {

case 0: { //your turn, pick from 4 icons
	
	if keyboard_check_pressed(vk_left) ||  keyboard_check_pressed(vk_right)
	{
		four_icons_cursor_selection += keyboard_check_pressed(vk_right) - keyboard_check_pressed(vk_left) 
		four_icons_cursor_selection = Wrap(four_icons_cursor_selection, 0, 3)
		play_sound(menu_move_sound, 1)
	}
	
	if scr_checkbuttons(true, 0, 1, 1, 0)
	{
		play_sound(menu_select_sound, 1)
		state = 99
	}
	
} break;


case 99: {
	if four_icons_cursor_selection == 0 ||
	four_icons_cursor_selection == 1 ||
	four_icons_cursor_selection == 3 
	{ //fight, act, or spare. select monster
		state = 99.1;
	}
	else { //items
		if ds_list_size(inventory) > 0 {state = 99.2;}
		else state = 0;
		}
} break;

case 99.1: { //select monster
	var updown = input_check_pressed(global.keyDown) - input_check_pressed(global.keyUp)
	if updown != 0 {menu_level1_selection += updown;
		play_sound( menu_move_sound, 1) 
	}
			menu_level1_selection = Wrap(menu_level1_selection, 0, ds_list_size(monster_list)-1 );

	if scr_checkbuttons(true, 1, 0, 0, 1) 
	{state = 0; } //return to 4icons
	if scr_checkbuttons(true, 0, 1, 1, 0)  //selected monster, 
	{
		if four_icons_cursor_selection == 0 //fight
		{state = 40;  
			instance_create_depth(ph_1.x, ph_1.y, depth-1, ut_tunein)
			}
		if four_icons_cursor_selection == 1 //act
		{state = 60; }
		if four_icons_cursor_selection == 3 //spare
		{state = 777; }
		
		play_sound(menu_select_sound, 1);
	}

	
} break;

case 40: { //attacking setup
		var shrinktime = 30;
	attackbox_w = Approach(attackbox_w, attackbox_w_dodge, 
	(attackbox_w_menu - attackbox_w_dodge)/shrinktime )
	
	attackbox_h = Approach(attackbox_h, attackbox_h_dodge, 
	(attackbox_h_menu - attackbox_h_dodge)/shrinktime )
	
	recalpha = Approach(recalpha, 1, 1/shrinktime)
	icon_alpha = Approach(icon_alpha, 0, 1/shrinktime)
	
	with obj_recorder dist = lerp(dist, 5, 0.02)
	
	timer++;
		if timer > 90 {state++; timer = 0 		}
} break;

case 41: //doing it
	//in ut_tunein
break;

case 42: //undoing it
		instance_destroy(ut_tunein)
		state++;
break;

case 43: //undoing it
timer++;
	with obj_recorder dist = lerp(dist, 2, 0.02)
if timer > 90 {timer=0; state = 1;} //enemy's turn
break;


case 60: { //select action
	var updown = input_check_pressed(global.keyDown) - input_check_pressed(global.keyUp)
	if updown != 0 {menu_level2_selection += updown;
		menu_level2_selection = Wrap(menu_level2_selection, 0, array_length(ut_mobrat.act_options)-1 );
		play_sound( menu_move_sound, 1) 
	}
	
	if scr_checkbuttons(true, 1, 0, 0, 1) 
	{state = 99.1; } //return to monster select
	if scr_checkbuttons(true, 0, 1, 1, 0)  //selected monster, 
	{
		
		if menu_level2_selection == 0 { //check
			state = 80;
		}
		if menu_level2_selection == 1 { //wind up
			state = 160;
		}
		if menu_level2_selection == 2 { //wind down
			state = 161;
		}
		play_sound(menu_select_sound, 1);
	}

} break;

case 160: { //wind up
		
		with obj_recorder{
			spitch += 0.05
			if spitch < 1 spitch = 1 //catch up quickly
			audio_sound_pitch(songinst, spitch)
			play_sound(snd_clockwork, spitch)
		}

		textinbox = @"You grab the key and turn.
Things are speeding up!"
		pitch_count++;
		if pitch_count < 0{ pitch_count = 0;
			textinbox += @"
You do a few at once, to get back to normal."
		}
		if pitch_count > 2 {
			textinbox += @"
Clockwork Rat seems content!"
		}
		state = 81; //go to check 2
	}
break;
case 161: { //wind down
		
		with obj_recorder{
			spitch -= 0.05
			if spitch > 1 spitch = 1 //catch up quickly
			audio_sound_pitch(songinst, spitch)
			play_sound(snd_clockwork, spitch)
		}
				textinbox = @"You grab the key and turn.
Things are slowing down!"
		pitch_count--;
		if pitch_count > 0 {pitch_count = 0;
			textinbox += @"
You do a few at once, to get back to normal."
		}

				if pitch_count < -2 {
			textinbox += @"
Clockwork Rat is moving sluggishly."
		}
		state = 81; //go to check 2
	}
break;



case 80: { //check 1
	textinbox = UT_PAR_ENEMY.check_info;
	state++;
} break;

case 81: { //check 2
	timer++; //timer controls text writing
		if scr_checkbuttons(true, 1, 1, 1, 1)
		{
			if timer > 200 {
			state = 1;	timer=0;}
			else timer =200
		}
} break;


case 99.2: { //select item
		var updown = input_check_pressed(global.keyDown) - input_check_pressed(global.keyUp)
	if updown != 0 {menu_level1_selection += updown;
		menu_level1_selection = Wrap(menu_level1_selection, 0, ds_list_size(inventory)-1 );
		play_sound( menu_move_sound, 1) 
	}
	
	if scr_checkbuttons(true, 1, 0, 0, 1) 
	{state = 0; } //return to 4icons
	if scr_checkbuttons(true, 0, 1, 1, 0)  //selected item, 
	{
		var iname = inventory[| menu_level1_selection]
		textinbox = "You eat the " + iname + "."
		switch iname {
		case "Automatic Swiss":			textinbox += " "
		break;
		case "Brienana":		textinbox += " "
		break;
		case "Nuts and Bolts":			textinbox += " "
		break;
		case "True Bleu":		textinbox += " "

		break;
		}
		hp += 5;
		ds_list_delete(inventory, menu_level1_selection);
		play_sound(snd_chargedash, 0.8);
		state = 81; //same as check2 !
	}
} break;



case 1: { //move to dodge box
	var shrinktime = 30;
	attackbox_w = Approach(attackbox_w, attackbox_w_dodge, 
	(attackbox_w_menu - attackbox_w_dodge)/shrinktime )
	
	attackbox_h = Approach(attackbox_h, attackbox_h_dodge, 
	(attackbox_h_menu - attackbox_h_dodge)/shrinktime )
	
	recalpha = Approach(recalpha, 1, 1/shrinktime)
	icon_alpha = Approach(icon_alpha, 0, 1/shrinktime)
	
	timer++;
	if timer > 30 {state++; timer = 0 
			//begin enemmy's turn
			UT_PAR_ENEMY.state++;
			instance_create_depth(ph_1.x, ph_1.y, depth-1, ut_heart)
			textinbox = choose(
			"Smells like cheese.", 
			)
			menu_level1_selection = 0
			menu_level2_selection = 0
		}
} break;


case 2: { //enemy's turn
	//timer++;	if timer > 900 {timer = 0; state++}
	with ut_heart {
		var www = other.attackbox_w/2 - sprite_width/2
		var hhh = other.attackbox_h/2 - sprite_height/2
		x = clamp( x, ph_1.x - www, ph_1.x + www)
		y = clamp( y, ph_1.y - hhh, ph_1.y + hhh)
	}
} break;

case 3: { //cleanup
	instance_destroy(ut_heart)
	state = 20;
} break;


case 20: { //return to menu box
		var shrinktime = 30;
	attackbox_w = Approach(attackbox_w, attackbox_w_menu, 
	(attackbox_w_menu - attackbox_w_dodge)/shrinktime )
	
	attackbox_h = Approach(attackbox_h, attackbox_h_menu, 
	(attackbox_h_menu - attackbox_h_dodge)/shrinktime )
	
	recalpha = Approach(recalpha, 0, 1/shrinktime)
	icon_alpha = Approach(icon_alpha, 1, 1/shrinktime)
	
	timer++;
	if timer > 30 {state=0; timer = 0}
} break;


case 777: //spare
	if pitch_count < -2 || pitch_count > 2 
	{ //can spare
		state = 779
	}
	else {state = 1; } //enemy's turn
	break;
	
case 779: //finish battle
	instance_destroy(ut_tunein)

	instance_create(ph_1.x, ph_1.y, obj_MadSquare)
		//for ending
		with UT_PAR_ENEMY {event_user(8) }
		with obj_recorder event_user(8)
		state++;
			
	break;
	
	
}


















