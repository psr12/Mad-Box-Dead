/// @description Insert description here
// You can write your code in this editor

if keyboard_check_pressed(ord("R")) and keyboard_check(vk_alt) room_goto(room)

if (alarm[0] or fadeblack != blalpha or gfadeblack != gblalpha) and (
keyboard_check_pressed(vk_space) or
keyboard_check_pressed(vk_enter) or
input_check_pressed(global.keyDash) or
input_check_pressed(global.keyCharge) or
input_check_pressed(global.keyJump) or
input_check_pressed(global.keyDrop))
{
	with obj_flair {x = targetx; y = targety }
	with obj_seqdummy {x = targetx; y = targety }
	with obj_cameraman {x = targetx; y = targety; global.zoom = targetzoom; }
	wait = false;
	alarm[0] = -1
	fadeblack = blalpha
	gfadeblack = gblalpha
}

if onscene < ds_list_size(que) and !wait
{
	screcute(que[| onscene])
}

if instance_exists(obj_ratface) {obj_ratface.sprite_index = ratface;}
if instance_exists(obj_heartface) {obj_heartface.sprite_index = heartface; 
		//obj_heartbody.sprite_index = heartbody;
	}
	
	if instance_exists(obj_artyhandler) exit //for last stage
	
	//pause
	if keyboard_check_pressed(vk_escape) or gamepad_button_check_pressed(global.activeController,gp_start)
	{
		pause = !pause;
	}
	
	if pause {
		
	opsel += sign( (keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up))
	+ (input_check_pressed(global.keyDown) - input_check_pressed(global.keyUp))
	+ (global.v_axis_press) )
	
	opsel = Wrap(opsel, 0, array_length(ops)-1 );
		
		if keyboard_check_pressed(vk_enter) 
		or keyboard_check_pressed(vk_space)
		or input_check_pressed(global.keyDash)
		or input_check_pressed(global.keyJump)
		
		{
		
		switch opsel {
				
			case 0: //resume
				pause = false;
			break;
			
			case 1: //skip
				onscene = ds_list_size(que)-1;
				wait = false;
				pause = false;
			break;
			
			case 2: //quit to menu
				with obj_recorder {scr_roomtrans(MainMenu, -2)}
			break;
		}
		
		}
		
	}
		
		
		
if music_wobble	 { audio_sound_pitch(songinst, 1 + dsin(current_time) * 0.05)    }
else audio_sound_pitch(songinst, 1 ) 