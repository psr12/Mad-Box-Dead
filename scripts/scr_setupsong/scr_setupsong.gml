// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_setupsong(songfilename){ //makes song stream and gets beatmap
	
		if is_string(songfilename) {
			music = audio_create_stream("songs/" + songfilename )
			var uh = string (songfilename) ; //holds name of song for saving charts
			songname = string_replace_all(uh, ".ogg", "") // "song"
			songfile = uh; //"song.ogg"
			songpath = working_directory + "songs/" + uh; //"song.ogg"
			beatmapfile = string(songname) + ".txt"
			beatmappath = working_directory + "beatmaps/" + string(songname) + ".txt"
		}
		
}

function scr_setupbeatmap(gotostate) { //reads beatmap, sets up  notelist/backup
					
					//5 = editing
					//1 = recording
					//99 = nothing, for cutscenes
	
			if file_exists(beatmappath) //beatmap exists
			{
				if gotostate != -999 {state = gotostate}
				var file = file_text_open_read(beatmappath)
				var beat_text = file_text_read_string(file)
				ds_list_read(notelist, beat_text)
				ds_list_copy(backup, notelist)
				file_text_close(file)
				firstrecord = false;
				songends = ds_list_size(backup);
				introends = ds_list_find_index(backup, -4) //locate introends
				if introends = -1 {introends = 0}
				
				//retrieve BPM from ini
				ini_open("BPM.ini")
					BPM = ini_read_real("BPM", songname, 120)
				ini_close()

			}
			else {state=1; //no beatmap, start recording
				ds_list_clear(notelist)
				ds_list_clear(backup)
			}
}