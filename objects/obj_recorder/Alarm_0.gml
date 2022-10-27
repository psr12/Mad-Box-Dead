/// @description restart music

			audio_stop_sound(songinst); //loop song, where player ended it
			songinst = audio_play_sound(music,1,0) // restart song
			audio_sound_set_track_position(songinst, introends/gamespeed) //start song where intro ends. default 0
			audio_sound_gain(songinst, songvolume, 0);

	//if !firstloop {
	//	ds_list_clear(notelist)
	//	ds_list_copy(notelist, backup)
	//	}

	firstloop = false;
	