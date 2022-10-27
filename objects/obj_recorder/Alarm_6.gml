/// @description editor playback load


				songinst = audio_play_sound(music, 1, 0)
				audio_sound_gain(songinst, songvolume, 0);
				
				audio_sound_set_track_position(songinst, showingfrom / 100 * (100/gamespeed) )//have to convert #ofslots into seconds
state = 6;