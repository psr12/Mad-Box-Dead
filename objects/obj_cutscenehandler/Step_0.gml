/// @description Insert description here
// You can write your code in this editor

if keyboard_check_pressed(ord("R")) and keyboard_check(vk_alt) room_goto(room)

if (alarm[0] or fadeblack != blalpha or gfadeblack != gblalpha) and (
keyboard_check_pressed(vk_space) or
keyboard_check_pressed(vk_enter) or
keyboard_check_pressed(global.keyDash) or
keyboard_check_pressed(global.keyCharge) or
keyboard_check_pressed(global.keyJump) or
keyboard_check_pressed(global.keyDrop))
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
	if keyboard_check_pressed(vk_escape)
	{
		pause = !pause;
	}
	
	if pause {
		
	opsel += keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up)
	opsel = Wrap(opsel, 0, array_length(ops)-1 );
		
		if keyboard_check_pressed(vk_enter) ||
		keyboard_check_pressed(vk_space) {
		
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