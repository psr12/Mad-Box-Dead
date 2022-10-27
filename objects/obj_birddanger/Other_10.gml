/// @description on beat
event_inherited();



state++;

if state == max_wait - warning_time { //is there a good way to check if you're using "Cool Bird"?
	 if !first_time and !audio_is_playing(snd_eagle)
		{play_sound(snd_eagle, 1) }
	}
if state >= max_wait - active_time { //inside active time
	image_alpha = 1;

}
else if state > max_wait - warning_time { //inside warning time
	image_alpha = 1;
}


if state == max_wait {state = 0;
		// if first_time max_wait += 8;
	 first_time = false;
}