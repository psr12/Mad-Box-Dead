/// @description Insert description here
// You can write your code in this editor

if instance_exists(obj_ratface) {obj_ratface.sprite_index = ratface;}
if instance_exists(obj_heartface) {obj_heartface.sprite_index = heartface; 
		//obj_heartbody.sprite_index = heartbody;
	}
	

if state == 0 {
	if place_meeting(x,y,obj_MadSquare)
	{ contact_wait--;
		if !contact_wait {
			play_sound(snd_notification,1);
			state = 1;
			if !instance_exists(obj_dontshowheart) obj_recorder.corner_heart_overwrite = csh_notification;
			else obj_recorder.corner_heart_overwrite = seq_exclamationpoint;
		}
	}
}

if state == 1
{	
	if 	(device_mouse_x_to_gui(0) < 500 //click corner
	and 	device_mouse_y_to_gui(0) > 500
	and mouse_check_button_pressed(mb_left))
	or
	keyboard_check_pressed(vk_space) //or hit space
	{
		state = 2;
		play_sound(snd_pageturn,1)
	}
	
	if !place_meeting(x,y,obj_MadSquare) //out of range
	{
		if instance_exists(obj_dontshowheart) obj_recorder.corner_heart_overwrite = seq_blank;
		else obj_recorder.corner_heart_overwrite = 0;

		state = 0;
	}
}

if state == 2 {
	if onscene < ds_list_size(que) and !wait
	{
		screcute(que[| onscene])
	}
}

