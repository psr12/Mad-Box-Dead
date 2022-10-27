/// @description Insert description here
// You can write your code in this editor

//if instance_exists(obj_cameraman) //?????????
//{
//	x = obj_cameraman.x 
//	y = obj_cameraman.y 
//}


introscale = Approach(introscale, 1, 0.1);
textminusbars = string_replace_all(text, "|", "")
var totallength = string_length(textminusbars)

if wait > 0 wait -= 1;
if show < totallength && !wait //advance text, text isn't finished and not waiting on |||||
{
	show += spd;
			show+= 0.001; // it doesn't like fractions, this is to prevent it rounding down or w/e

	if string_char_at(text, show) == "|"{
		var fail = show; if fail <1 fail = 1; //breaks of show < 1, index starts at 1
		text = string_delete(text, fail, 1)
		wait+=10;
		show-= spd;
	}
	showtext = string_copy(text, 0, show )
	
	if !audio_is_playing(playingsound) and !wait playingsound = play_sound(sound,1+random(0.1) );
}

if keyboard_check_pressed(vk_space) ||
keyboard_check_pressed(global.keyDash) ||
keyboard_check_pressed(global.keyDrop) ||
keyboard_check_pressed(global.keyJump) ||
keyboard_check_pressed(global.keyCharge) ||
keyboard_check_pressed(vk_enter)
{
	if show < totallength //text is note finished
	{
		do {
			show += spd;
			text = string_replace(text, "|", "")
			}
		until (show >= totallength)
		showtext = textminusbars
		introscale = 1;
	}
	else { //if text is finished
		if object_index == obj_textbox progenitor.wait = false; // tell cutscene handler to continue
				//unless autotextbox, which appear during levels
		instance_destroy();
	}

}