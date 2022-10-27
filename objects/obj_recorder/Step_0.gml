/// @description Insert description here
// You can write your code in this editor

update_input() //always
if keyboard_check_pressed(vk_control) seefps = !seefps
//var dt = delta_time / 8333.33;

	
switch state
{
	case -2: //main menu
		if instance_exists(obj_mainmenu) {mainmenuselect = obj_mainmenu.selected;
			story_level_selected = obj_mainmenu.story_level_selected
			}
		if (keyboard_check_pressed(vk_space) ||
		keyboard_check_pressed(vk_enter) ||
		keyboard_check_pressed(ord("D")) ||
		keyboard_check_pressed(ord("Z"))   )
		and mainmenuselect >= 0
		and !instance_exists(obj_bossmgtransition)
		{
			switch mainmenuselect
			{
				case 0: //story
					scr_setupsong(storysonglist[story_level_selected])
					scr_setupbeatmap(99) //99 in both, a bit redundant but 
					scr_setupforsong() //insert blank notes
					scr_roomtrans(storylevellist[story_level_selected] , 99)
					instorymode = story_level_selected;
				break;
				case 1: //levelselect
					scr_roomtrans(Room1, 0)
					instorymode = false;
				break;
				case 2: //options
					scr_roomtrans(Room1, -1)
				break;
				case 3: //quit
					game_end()
				break;
			}
		}
	break;
	//end of case -2, main menu
	
	case -1: //keybinding menu
	
	//if keyboard_check_pressed(ord("R")) or keyboard_check_pressed(vk_escape) {scr_roomtrans(MainMenu, -2) } //quick exit
	
			switch leftright
			{
				case 0: //normal, select your... keybind slot
				
				if !ambinding{ //only move menu if not natking a keybinding
				if keyboard_check_pressed(vk_up) {updown--; } //picking slots
				if keyboard_check_pressed(vk_down){updown++; }
				if keyboard_check_pressed(vk_left){leftright--;} //selecting mode
				if keyboard_check_pressed(vk_right){leftright++; } 
				
				leftright = clamp(leftright, 0, slots)

				updown = clamp(updown, 0, array_length(options)-1 )
				
				if keyboard_check_pressed(vk_right) updown = global.animationmodes 
				//go to animation modes selection
				}


				if ambinding //rebinding, awaiting input
					if keyboard_check_pressed(vk_escape) {ambinding = 0} //deselect bindings
					else
					if input_anykey() 
					{
						if global.methodOfInput == "KEYBOARD"
								{
									if input_lastkey() == vk_backspace //unbind on backspace
									{	
										switch updown //urgh
											{
												case 0:		global.keyLeft_kb = -1; break;
												case 1:		global.keyRight_kb = -1; break;
												case 2:		global.keyUp_kb = -1; break;
												case 3:		global.keyDown_kb = -1; break;
												case 4:		global.keyCharge_kb = -1; break;
												case 5:		global.keyDrop_kb = -1; break;
												case 6:		global.keyJump_kb = -1; break;
												case 7:		global.keyDash_kb = -1; break;
											}update_scheme()
									}
									else //any other button
									{
									switch updown //urgh
										{
											case 0:		global.keyLeft_kb = input_lastkey(); break;
											case 1:		global.keyRight_kb = input_lastkey(); break;
											case 2:		global.keyUp_kb = input_lastkey(); break;
											case 3:		global.keyDown_kb = input_lastkey(); break;
											case 4:		global.keyCharge_kb = input_lastkey(); break;
											case 5:		global.keyDrop_kb = input_lastkey(); break;
											case 6:		global.keyJump_kb = input_lastkey(); break;
											case 7:		global.keyDash_kb = input_lastkey(); break;
										}update_scheme()
									}
						
								}//end of keyboard binding
						if global.methodOfInput == "GAMEPAD"
								{
									if input_lastkey() == vk_backspace //unbind on backspace
									{	
										switch updown //urgh
											{
												case 0:		global.keyLeft_gp = -1; break;
												case 1:		global.keyRight_gp = -1; break;
												case 2:		global.keyUp_gp = -1; break;
												case 3:		global.keyDown_gp = -1; break;
												case 4:		global.keyCharge_gp = -1; break;
												case 5:		global.keyDrop_gp = -1; break;
												case 6:		global.keyJump_gp = -1; break;
												case 7:		global.keyDash_gp = -1; break;
											}update_scheme()
									}
									else //any other button
									{
									switch updown //urgh
										{
											case 0:		global.keyLeft_gp = input_lastkey(); break;
											case 1:		global.keyRight_gp = input_lastkey(); break;
											case 2:		global.keyUp_gp = input_lastkey(); break;
											case 3:		global.keyDown_gp = input_lastkey(); break;
											case 4:		global.keyCharge_gp = input_lastkey(); break;
											case 5:		global.keyDrop_gp = input_lastkey(); break;
											case 6:		global.keyJump_gp = input_lastkey(); break;
											case 7:		global.keyDash_gp = input_lastkey(); break;
										}update_scheme()
									}
						
								} //end of gamepad binding
				
						ambinding=0; //stop binding 
						if updown < array_length(options)-1 {updown++} //automatically go to next in options
						else {ambinding=0} //unless all finished
					} //end of if input anykey
				
				if ( keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter) ) && !ambinding
				{	ambinding = 1;	}//selected a square
				break; //end of case 0, keybindings

				case 1: //pick animation mode
					if keyboard_check_pressed(vk_up) {updown--; } //picking slots
					if keyboard_check_pressed(vk_down){updown++; }
					if keyboard_check_pressed(vk_left){leftright--;} //selecting mode
					if keyboard_check_pressed(vk_right){leftright++; } 
					leftright = clamp(leftright, 0, slots)
						//global.animationmodes =  clamp(updown, 0, 1 );
					updown = clamp(updown, 0, array_length(dashanim_array)+1) //+1 for solids/parts select
					//would be -1 without that
					if keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter)
					{
						if updown <= 1 global.animationmodes = updown;
						if updown > 1 dashanim_array[updown-2] = !dashanim_array[updown-2]
					}
				break;
				
			case 2: //OTHER
				if keyboard_check_pressed(vk_up) {updown--; } //picking slots
				if keyboard_check_pressed(vk_down){updown++; }
				if keyboard_check_pressed(vk_left){leftright--;} //selecting mode
				if keyboard_check_pressed(vk_right){leftright++; } 
				leftright = clamp(leftright, 0, slots)
				updown = clamp(updown, 0, array_length(opArray2d[2])-1 )
				if keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter)
				{
					opArray2d[2][updown] = !opArray2d[2][updown]
				}
			break;
				
				case 3: 
					if keyboard_check_pressed(vk_left){leftright--;} //selecting mode
					if keyboard_check_pressed(vk_right){leftright++; } 
						leftright = clamp(leftright, 0, slots)
						
						//exit
		if keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter)
				{	scr_roomtrans(MainMenu, -2)
					//save keybindings
					ini_open("keybindings.ini")
					
							ini_write_real("keyboard", "left", global.keyLeft_kb)
							ini_write_real("keyboard", "right", global.keyRight_kb)
							ini_write_real("keyboard", "up", global.keyUp_kb)
							ini_write_real("keyboard", "down", global.keyDown_kb)
								ini_write_real("keyboard", "charge", global.keyCharge_kb)
								ini_write_real("keyboard", "drop", global.keyDrop_kb)
								ini_write_real("keyboard", "jump", global.keyJump_kb)
								ini_write_real("keyboard", "dash", global.keyDash_kb)


						// Values of gamepad buttons
						ini_write_real("gamepad", "left", global.keyLeft_gp)
						ini_write_real("gamepad", "right", global.keyRight_gp)
						ini_write_real("gamepad", "up", global.keyUp_gp)
						ini_write_real("gamepad", "down", global.keyDown_gp)
							ini_write_real("gamepad", "charge", global.keyCharge_gp)
							ini_write_real("gamepad", "drop", global.keyDrop_gp)
							ini_write_real("gamepad", "jump", global.keyJump_gp)
							ini_write_real("gamepad", "dash", global.keyDash_gp)
							
					ini_write_real("settings", "animationmode", global.animationmodes);  //parts or whole sprites

						ini_write_real("dash_anims", "dash", dashanim_array[0])
						ini_write_real("dash_anims", "bash", dashanim_array[1])
						ini_write_real("dash_anims", "sonic", dashanim_array[2])
						ini_write_real("dash_anims", "sugar", dashanim_array[3])
						ini_write_real("dash_anims", "gorilla", dashanim_array[4])
						
					ini_write_real("settings", "showheart", opArray2d[2][0])
					ini_write_real("settings", "autohit", opArray2d[2][1])
					ini_write_real("settings", "invincible", opArray2d[2][2])
					ini_write_real("settings", "timeron", opArray2d[2][3])
					ini_write_real("settings", "microgames", opArray2d[2][4])
					ini_write_real("settings", "confetti", opArray2d[2][5])

						ini_close()
					}
				break;
			}//end of leftright switch
			
	break; //end of case -1, 
	
	case 0: //song select
	{
		
		scr_changevolume();
		
		soseoffset = lerp(soseoffset, 0, 0.1);
		//song select

		var sochange = scr_holdtoscroll()
		if sochange != 0 {
			songselect += sochange;
			soseoffset = sochange;
			songselect = Wrap(songselect, 0, ds_list_size(songlist)-1);
			play_sound(snd_menutick, 1);
		}
		
	if keyboard_check_pressed(ord("R") ) {scr_roomtrans(MainMenu, -2)} //return to menu
	if keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter) //load music
		{
			
			scr_setupsong(songlist[| songselect]) //make music stream, get beatmap, 
			scr_setupbeatmap(5) 
		}
	if keyboard_check_pressed(vk_backspace) //delete beatmap
		{
			var uh = string (songlist[| songselect]) ; //holds name of song for saving charts
			var songnam = string_replace_all(uh, ".ogg", "") // "song"
			var beatmapfil = string(songnam) + ".txt"
			//what = filename_path(beatmapfil)
			if file_exists(beatmapfil) //beatmap exists
			{
				file_delete(beatmapfil) //delete beatmap
			}
			
		}
	}
		break;
	case 1: //countdown to recording
	{
		scr_changevolume();
		if timer <=0 {showtext--; timer=onesec; }
		if showtext <=0 
		{
			state++;
			songinst = audio_play_sound(music,1,0);
			audio_sound_gain(songinst, songvolume, 0)
			repeat(grace/2) ds_list_insert(notelist, 0, 0) //add grace/2 empty slots to beginning of notelist
			showingfrom = grace/2;
				//else notes will be early, something about the timing system 
			songends = audio_sound_length(music)*gamespeed //auto set song ends to the end of the song
			fuckmeDeltaTime = 0;
		}
		timer--;
	}
	break;
	
	case 2: //recording
{
		scr_changevolume();
		var add = 0;
		//0 = blank, 1 = white, 2 = redbar
		
			fuckmeDeltaTime += delta_time
			while (fuckmeDeltaTime > 8333.33) {fuckmeDeltaTime -= 8333.33
				showingfrom ++;
				}	
				
			if keyboard_check_pressed(vk_space) //whites
			{
				add = 1; //else add white bar
				var beat = audio_play_sound(snd_beat,1,0);
				audio_sound_pitch(beat, 1.05)
			}
		
			if keyboard_check_pressed(ord("A") )  //reds
			{
				var beat = audio_play_sound(snd_beat,1,0);
				add= 2;
			}
			
			//if going over old slots
						var dislot = showingfrom
			//if snap_to_nearest != 0 {
			//	var FPB = gamespeed / (BPM/60) //frames per beat
			//	dislot = round(showingfrom / FPB) * FPB //find nearest 'snap-to' slot
			//		}
			if dislot < ds_list_size(notelist) ds_list_replace(notelist, dislot, add)
			else ds_list_add(notelist, add); //add 0 if no press
			//if adding new slots to the end of the notelist



			//outside of active check
			if keyboard_check_pressed(vk_escape) || !audio_is_playing(music) //stop recording
			{
				state = 5;
				
				if firstrecord
				{
					if !audio_is_playing(music) { songends = audio_sound_length(music) * gamespeed;} //if song is over, sets songends automatically
					else {songends = audio_sound_get_track_position(songinst) * gamespeed} //save where the song ends
					firstrecord = false;
					showingfrom = 0;
				}
				audio_stop_sound(songinst);
				
				if ds_list_size(notelist) > songends {songends = ds_list_size(notelist) } //overwrite songends if you record over the ending
				
				ds_list_copy(backup, notelist) //backup notelist, for looping/restarting
				
				showingfrom = takemeback;
			}
}
		break;
	
	case 5: //editing
		{
			if keyboard_check_pressed(vk_f9) and snap_to_nearest > 0{ //auto fill FROM SHOWINGFROM
				var songsecs = audio_sound_length(music)
				//ds_list_clear(notelist)
				//ds_list_clear(backup)
				var i = showingfrom;
				repeat( (songsecs * gamespeed) - showingfrom )
					{ 
						if i < ds_list_size(notelist)-1 ds_list_replace(notelist, i, 0)
						else ds_list_add(notelist, 0) 
						i++;
					}
				var FPB = gamespeed / (BPM/60)
				FPB = (FPB/snap_to_nearest) //calc frames per beat
				for (var i=showingfrom; i < songsecs * gamespeed; i+=FPB)
				{ //auto fill rest of song based on snapto
					ds_list_replace(notelist, i, 1)
				}
				songends = songsecs * gamespeed
			}
		if mouse_wheel_up() || mouse_wheel_down() {
		
			if mouse_x == clamp(mouse_x, volsquare_left, volsquare_left+ volsquare_size)
			&& mouse_y == clamp(mouse_y, volsquare_top, volsquare_top + volsquare_size)
			{
				scr_changevolume();
				//audio_sound_gain(songinst, songvolume, 0);
			}
			if mouse_x == clamp(mouse_x, bpmsquare_left, bpmsquare_left+ bpmsquare_size)
			&& mouse_y == clamp(mouse_y, bpmsquare_top, bpmsquare_top + bpmsquare_size)
			{
				var bpmchan = 1;
				if keyboard_check(vk_shift) bpmchan = 10;
				BPM += (mouse_wheel_up() - mouse_wheel_down()) * bpmchan
				BPM = clamp(BPM, 1, 500)
			}
			if mouse_x == clamp(mouse_x, snapsquare_left, snapsquare_left+ snapsquare_size)
			&& mouse_y == clamp(mouse_y, snapsquare_top, snapsquare_top + snapsquare_size)
			{
				var snapchangevar = 1;
				if keyboard_check(vk_shift) snapchangevar = 3;
				snap_to_nearest += (mouse_wheel_up() - mouse_wheel_down()) * snapchangevar;
				snap_to_nearest = clamp(snap_to_nearest, 0, 32);
			}
		}
		//scrolling the notelist
		notelist_velocity = mouse_x - mouse_xprevious;
		mouse_xprevious = mouse_x;
		if keyboard_check_pressed(vk_pageup) || keyboard_check_pressed(vk_pagedown)
		{
			var cb = 1;
			if keyboard_check(vk_shift) cb = 10;
			showingfrom += (keyboard_check_pressed(vk_pageup) - keyboard_check_pressed(vk_pagedown)) * gamespeed*3*cb;
			if showingfrom < 0 showingfrom = 0;
			if showingfrom > ds_list_size(notelist) showingfrom = ds_list_size(notelist);
		}
		if mouse_check_button(mb_left) || mouse_check_button(mb_right) 
		|| mouse_check_button(mb_middle) //l/r/middle to drag note bar
		{
			if mouse_y == clamp(mouse_y, bbox_top_fix-sprite_height_fix, bbox_top_fix) //only if clicking just above the note bar
				{ //scrubb around in the note bar
					showingfrom += floor(notelist_velocity);
					if showingfrom < 0 showingfrom = 0;
					if showingfrom > ds_list_size(notelist) showingfrom = ds_list_size(notelist);
				}
			var str_hei = string_height("A")
			if mouse_y == clamp(mouse_y, notespeed_height, notespeed_height+str_hei) //notespeed
				{ 
					dist +=  round(  ((notelist_velocity)/5) )/10;
					dist = clamp(dist, 1, 24);
				}
		}

		//how far from the heart notes disappear
		var distfromcenter = (sprite_width_fix/2); //where bars disappear

		var hoverover = round(( max(0, abs(mouse_x-x) - distfromcenter) )/dist ) + showingfrom

		if keyboard_check_pressed(ord("D"))  //set introend
		{
			introends = showingfrom; //in FRAMES
			var oldone = ds_list_find_index(notelist, -4)

				do {notelist[| oldone] = 0 
					oldone = ds_list_find_index(notelist, -4)
					}
				until (ds_list_find_index(notelist, -4) == -1 )

			notelist[| showingfrom] = -4;
		}
		if keyboard_check_pressed(ord("S"))  //set songends
		{
			songends = showingfrom; //in FRAMES
			if ds_list_size(notelist) > songends
			{
				do ds_list_delete(notelist, ds_list_size(notelist)-1)
				until ds_list_size(notelist) == songends+1
			}
		}
		if keyboard_check_pressed(ord("A"))  //start recording again
		{
			takemeback = showingfrom; //holds where you started recording from
			
			state = 2; if showingfrom < grace/2 showingfrom = grace/2; //music plays a tiny bit late for grace period
				//will desync if cant rewind (grace/2)/gamespeed seconds
			songinst = audio_play_sound(music,1,0) // restart song
			audio_sound_set_track_position(songinst, showingfrom/gamespeed - (grace/2)/gamespeed) //start song where intro ends. default 0
			audio_sound_gain(songinst, songvolume, 0);
		}
		if keyboard_check_pressed(vk_home)  //jump to start
			{showingfrom = 0;	}
		if keyboard_check_pressed(vk_end)  //jump to end
			{showingfrom = songends;}

		
		if (mouse_check_button_pressed(mb_right) || mouse_check_button_pressed(mb_left))
		&& mouse_y == clamp(mouse_y, bbox_top_fix, bbox_bottom_fix) //only if clicking within the note bar
		&& mouse_x != clamp(mouse_x, bbox_left_fix, bbox_right_fix) //don't place notes inside the heart
		{
			//search nearby slots for notes
			var target = hoverover; //which slot to use
			var range = 10; //how far to search(onedirection)
			for (var c = max(0, hoverover-range);
			c < min(ds_list_size(notelist), hoverover+range); c++)
			{
				if notelist[| c] //if there is a note
				{target = c; break;}//target that slot
				//if no notes in range, target is exactly where you click
			}
					var FPB = gamespeed / (BPM/60)
					FPB = (FPB/snap_to_nearest)
			if mouse_check_button_pressed(mb_left)
			{
				if notelist[| target] == 1 {ds_list_replace(notelist, target, 0)} //remove note
				else if snap_to_nearest == 0 ds_list_replace(notelist, target, 1)
				else ds_list_replace(notelist, round(target/FPB)*FPB, 1)	//replace blank or red with white
			}
			if mouse_check_button_pressed(mb_right)
			{
				if notelist[| target] == 2 {ds_list_replace(notelist, target, 0)} //remove note
				else if snap_to_nearest == 0 ds_list_replace(notelist, target, 2)
				else ds_list_replace(notelist, round(target/FPB)*FPB, 2)	//replace blank or white with red
			}
		}
		
		if keyboard_check_pressed(vk_space) //play music,starting at showingfrom
			{
				ds_list_copy(backup, notelist)
				repeat(showingfrom) {ds_list_delete(notelist,0) }//get rid of slots until it matches where you are showing frem

				alarm[6] = 5; //has to load, for longer songs.....
			}

		if keyboard_check_pressed(vk_escape)
		{
			state = 8; //level select
			
			var file = file_text_open_write(beatmappath)
			var beatmap_text = ds_list_write(notelist)
			file_text_write_string(file, beatmap_text)
			file_text_close(file)
			
			songends = ds_list_size(notelist)-1;
			
			songselect = 0;
		}
		
		if keyboard_check_pressed( ord("R") ) //back
		{
			state = 0;
			if music != noone {audio_destroy_stream(music)} 
			redcount=0; redhit = 0; showingfrom = 0;
			ds_list_clear(notelist)
			ds_list_clear(backup)
			exit;
		}
}
		break;
	case 6: //editing playback
	{
		//var prosition = ds_list_size(backup) - ds_list_size(notelist)
		//if audio_sound_get_track_position(songinst) > prosition {
		//	do {ds_list_delete( notelist, 0)}
		//	until (audio_sound_get_track_position(songinst) >= prosition)
		//}
		

		scr_changevolume();
		fuckmeDeltaTime += delta_time
		while (fuckmeDeltaTime > 8333.33) {ds_list_delete(notelist, 0); fuckmeDeltaTime -= 8333.33}
		
		
		#region looping playback
		//if ds_list_size(notelist) <= songends-introends { //add backup list to end of notelist once finished
		//	//var busize = ds_list_size(backup)
		//	for (var uh = introends; uh < (songends); uh++)
		//	{
		//		ds_list_add(notelist, backup[|uh] ); //adds from introends up until songends*120
		//	}
		//	alarm[0] = songends-introends //restarts the music at the correct time
		//}

		//if audio_sound_get_track_position(songinst) >= songends/gamespeed
		//|| !audio_is_playing(songinst) //song ended. restart from introends
		//{
		//audio_sound_set_track_position(songinst, introends / 100 * (100/gamespeed) )
		////have to convert #ofslots into seconds
		//}
		
		//if  keyboard_check_pressed(vk_space) //song is over, or manually stop playback with space, esc, r
		//|| keyboard_check_pressed(vk_escape) || keyboard_check_pressed(ord("R"))
		//{
		//	showingfrom = audio_sound_get_track_position(songinst )// start showingfrom where you stopped playback
		//	showingfrom = max(showingfrom, 0) //idk the reason, but it seems offset by 8
		//	audio_stop_sound(songinst) 
		//	state = 5;
		//	ds_list_copy(notelist, backup);
		//}
		#endregion looping playback
		
		#region old, non looping
			if audio_sound_get_track_position(songinst) >= songends/gamespeed || ds_list_size(notelist) < 1 {audio_stop_sound(songinst) } //song passes ending
			if !audio_is_playing(songinst) || keyboard_check_pressed(vk_space) //song is over, or manually stop playback with space
			|| keyboard_check_pressed(vk_escape) || keyboard_check_pressed(ord("R"))
			{
				showingfrom = ds_list_size(backup) - ds_list_size(notelist) - 8// start showingfrom where you stopped playback
				showingfrom = max(showingfrom, 0) //idk the reason, but it seems offset by 8
				audio_stop_sound(songinst) 
				state = 5;
				ds_list_copy(notelist, backup);
			}
		#endregion non looping playback
		
		active = 0; //if no notes.... 0
		for (var i = 0; i <= grace; i++)  //find next note, ANY TYPE
		{
			if notelist[| i] {active = i; break;}
		}
		
		if active == grace/2 //auto hit notes in playback
		{
			var cnote = notelist[| active];
			if cnote == 1 || cnote == 4 {ds_list_replace(notelist, active, -2); lastred = false;} //hit big note
			if cnote == 2 {ds_list_replace(notelist, active, -3); lastred = true;} //hit small note

			audio_play_sound(snd_beat,1,0)
		}

	}
	break;
	
	case 8: //level select
{
		//level select
		var udchange = scr_holdtoscroll()
		if udchange != 0 {songselect += udchange;
			soseoffset = udchange;
			play_sound(snd_menutick, 1);
		}
		soseoffset = lerp(soseoffset, 0, 0.1);
		songselect = Wrap(songselect, 0, ds_list_size(roomlist)-1);

		if keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter) //go to room
		{
			
			var cuspot = ds_list_find_index(roomlist, Custom)
			if songselect == cuspot {state = 9; keyboard_string = ""; 
				alarm[1] = cursortimer} // new custom level name input
			else { //set up level
				//state = 10;
					scr_setupforsong()
					
				if songselect > cuspot { //a custom level
					scr_roomtrans(Custom, 10); var name = roomlist[| songselect]
									var path = "levels/" + name
									global.level = path;
					}
				else if songselect < cuspot {//picked a non-custom room room
					scr_roomtrans(roomlist[| songselect], 10);
					} ; 
				
				songselect = 0; //has to be last....
			}
				


		}
		if keyboard_check_pressed(ord("R") ) //go back to editing
		{state = 5;}
		if keyboard_check_pressed(vk_backspace) && songselect > 3 //delete custom room
		{	var name = roomlist[| songselect]
			var path = "levels/" + name
			if file_exists(path ) {file_delete(path) }
			scr_checkrooms();
			}
}		
	break;
	
	case 9://input name for new custom level
			if keyboard_check_pressed(vk_enter) //create file, go to state 8
			{
				var fname = keyboard_string + ".txt" 
				var handle = file_text_open_write("levels/" + fname); 
				file_text_close(handle);
				alarm[1] = -1;
				state = 8;
				scr_checkrooms()
			}
	break;
	
	case 10: //countdown, start playback so notes show up on time
{
		fuckmeDeltaTime += delta_time; //lag protection
		while (fuckmeDeltaTime > 8333.33) {ds_list_delete(notelist, 0); 
			fuckmeDeltaTime -= 8333.33;
			timer--;
			}
			
		if timer <=0 {showtext--; timer=onesec; }
		//ds_list_delete(notelist, 0)
		if showtext <=0 
		{
			state=11; 
			songinst = audio_play_sound(music,1,0) //loop now
			audio_sound_gain(songinst, songvolume, 0);
				
			////empty rewinds folder	
			//var foil = file_find_first(rewind_path + "*.txt", 0) //gets first file name
			//do {
			//	file_delete("rewinds/" + string(foil))
			//	foil = file_find_next()
			//}
			//until (foil == "")
			//ds_list_clear(rewind_path_list)
			
			firstloop = true;
		}
		//timer--;
}
	break;
		
	case 11:  //start playing, 
{	
		//rewind_timer++;
		//if rewind_timer >= rewind_frequency {
		//	//scr_rewind_save()
		//}
		if ds_list_size(notelist) <= songends-introends { //add backup list to end of notelist once finished
			//var busize = ds_list_size(backup)
			for (var uh = introends; uh < (songends); uh++)
			{
				ds_list_add(notelist, backup[|uh] ); //adds from introends up until songends*120
			}
			alarm[0] = songends-introends //restarts the music at the correct time
		}
		
			// !!! TIME should be... (distance to the 2nd note - distance to the first note)
			//don't need to search beyond 2nd note. small reds should be between those two also
		var gote = notelist[| 0];
		if gote == -2 || gote == 1 //if there is a white, big red, or previously hit note
		{
			for (var i = 1; i < maxsearch; i++) //next note, ONLY 1s
			{
				note = notelist[| i];
				if note == 1
				{
					break; //break for  loop, current i value is distance no next note
				}
			}
			tome = ( 30 / i ) //further is higher; THE 30 IS ARBITRARY, higher = faster actions
			if instance_exists(obj_MadSquare) with obj_MadSquare
			{	time = other.tome;
				battery_bulge = 0.2;
				battery_charge--;
			}
			if instance_exists(obj_onbeat)
			{
				with obj_onbeat {event_user(0);}
				obj_onbeat.time = tome;
			}//set off onbeats' events
			lastred = false; //for drawing, last note was white, turn off lastred
			
			#region corner heart sequence
				if (state == 11) and opArray2d[2][0]{
				var seqnum = min(combo div 50, array_length(seqlist)-1 ) //don't overshoot list
				var seqid = seqlist[seqnum]
				if corner_heart_overwrite seqid = corner_heart_overwrite
				scr_changeseq(seqid, seqscale)
					if layer_sequence_exists(layer, seq) { //current animation is sped up based on notes
						layer_sequence_speedscale(seq, tome+0.5 ) //.5 is arbitrary, just because of how i did seqs
						if tome == 0 layer_sequence_speedscale(seq, 0) //for pause
						}
				}
				seqscale += 0.2 * global.zoom;
				//corner_heart_overwrite = 0; //if doing this, bombard?
			#endregion
		}
					
		asdf += tome; //handles ONBEAT events going off
		while asdf > 1 and state == 11
			{ 
				asdf--;
					with obj_onbeat {event_user(3)}
				seqscale = lerp(seqscale, global.zoom, 0.1)
				layer_sequence_xscale(seq,seqscale)
				layer_sequence_yscale(seq,seqscale)
			}

		
		if gote == 2 {lastred = true;} //for drawing, last note was red, turn on lastred
		if gote == 1 || gote == 2 {nummiss++; //missed a note
		//	if maxcombo < combo maxcombo = combo
			//combo = 0;
			}
			
			
		active = 0; //if no notes.... 0
		for (var i = 0; i <= grace; i++)  //find next note, ANY TYPE
		{
			if notelist[| i] {active = i; break;}
		}
		
		var reddy = notelist[| grace+1]; if reddy == 2 {redcount++;} //check for smalls
		var whitey = notelist[| 0]; if whitey == 1 || whitey == 4 {redcount = 0; redhit = 0;} //check for bigs
		
		
		if active //== grace/2//hit a button during an active note
		&& (
			input_check_pressed(global.keyJump)||
			input_check_pressed(global.keyCharge)||
			input_check_pressed(global.keyDash)||
			input_check_pressed(global.keyDrop)
		) or ( opArray2d[2][1] and (
			input_check(global.keyJump)||
			input_check(global.keyCharge)||
			input_check(global.keyDash)||
			input_check(global.keyDrop) )
			and active == grace/2)
		{
			var cnote = notelist[| active];
			if cnote == 1 || cnote == 4 //big notes
			{
				recalpha = 1; //for disappearing note effect
				//if redcount == redhit 
				{
				 if instance_exists(obj_MadSquare)	{
					 with obj_MadSquare {event_user(0);}	
					 obj_MadSquare.time = tome; 
					 }

				}
				redhit = 0; redcount = 0; //always reset reds on big notes
				bulge = 100; //pump heart
			}
			if cnote == 2 //small notes
			{
				redhit++; //increase redhit on small notes, don't move mad rat
			}
			
			if !instance_exists(obj_catchase)
			{
				//every note
				if instance_exists(obj_MadSquare) and opArray2d[2][5] //confetti option
				{ var conf = instance_create_depth(obj_MadSquare.x,obj_MadSquare.y,obj_MadSquare.depth+1, obj_confetti)
					conf.text = active-grace/2
				}			
				instance_create_depth(x,y,depth-100, obj_guislams);
				if opArray2d[2][5] {var great = instance_create_depth(x-5,y-15, depth-1, obj_great)
				great.text = active-grace/2} //-grace/2, so 0 is perfect, instead of grace/2
			}
			//scoring	
			if active > grace*0.9 {numearly++ 	if maxcombo < combo maxcombo = combo
			combo = 0;} //early
			else if active < grace*0.1 {numlate++	if maxcombo < combo maxcombo = combo
			combo = 0;} //late
			else {numgreat++; combo++; } //great
			
			
			if cnote == 1 || cnote == 4 {ds_list_replace(notelist, active, -2); lastred = false;} //hit big note
			if cnote == 2 {ds_list_replace(notelist, active, -3); lastred = true;} //hit small note
			//small red replacement has to be different else TIME gets affected
		
			audio_play_sound(snd_beat,1,0)
			with obj_darkness {event_user(7) } // SUCCESSFUL HIT ONLY
		}
		
		alarm[0]++; //don't set off alarm 0 unless deltatime says so
		fuckmeDeltaTime += delta_time; //lag protection
		while (fuckmeDeltaTime > 8333.33) {ds_list_delete(notelist, 0); 
			fuckmeDeltaTime -= 8333.33; alarm[0]--; }
			
			
		 //delete current slot in notelist
		 if audio_sound_get_track_position(songinst) > songends/gamespeed 
		 || !audio_is_playing(songinst) {
			audio_stop_sound(songinst); //loop song, where player ended it
			songinst = audio_play_sound(music,1,0) // restart song
			audio_sound_set_track_position(songinst, introends/gamespeed) //start song where intro ends. default 0
			audio_sound_gain(songinst, songvolume, 0);
			//ds_list_copy(notelist, backup)
		 }
		 
		bulge -= 1;
			bulge = clamp(bulge, 0, 100); //unpump heart
		
		if keyboard_check_pressed( ord("R") ) //rewind
		{
			scr_reset_level()
			//state = 55; //rewind
			//scr_rewind_save();
			//with obj_onbeat {time = 0}
			//with obj_MadSquare {time = 0}
			//rewind_leftright_select = ds_list_size(rewind_path_list)-1;
			//audio_pause_sound(songinst);
		}
		if keyboard_check_pressed(vk_escape) //pause
		{
			pause_menu_select = 0
			state = 404; 
			with obj_onbeat {time = 0}
			with obj_MadSquare {time = 0}
			save_tome = tome;
			
			//busted due to introends
			//if firstloop takemeback = ds_list_size(backup) - (ds_list_size(notelist)- ds_list_size(backup))
			//else takemeback = ds_list_size(backup) - (ds_list_size(notelist)- ds_list_size(backup) + introends)
			
			audio_pause_sound(songinst) //stop the music
			
			with obj_MadSquare {

				if layer_sequence_exists(layer, seq) { //stop mad rat's animation
				layer_sequence_speedscale(seq, 0)
				}
			}
			//if !instance_exists(obj_level_editor) scr_return_to_editor()
			//else scr_reset_level(); //so esc goes back to editing the level
		}
}
	break;
	
	case 55: //rewind state OR IS IT?
		alarm[0]++
		if keyboard_check_pressed(vk_left) || keyboard_check_pressed(vk_right)
		{
			rewind_leftright_select -= keyboard_check_pressed(vk_left) - keyboard_check_pressed(vk_right) //select l/r
			rewind_leftright_select = clamp(rewind_leftright_select, 0, ds_list_size(rewind_path_list)-1 ) //clamp between 0 and most recent rewind file
			scr_level_load(rewind_path_list[| rewind_leftright_select]);
		}
		if keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord("R"))
		{
			state = 11; audio_resume_sound(songinst);
			if firstloop alarm[0] = ds_list_size(backup) - (ds_list_size(notelist)- ds_list_size(backup))
			else alarm[0] = ds_list_size(backup) - (ds_list_size(notelist)- ds_list_size(backup) + introends)
		}

	break;
	
	case 404: //paused
		alarm[0]++; //stop the song from restarting while paused, not toally sure why i did that
		var leavenow = false;
		
		if device_mouse_x_to_gui(0) == clamp(device_mouse_x_to_gui(0), 350, 350+64 )
		and device_mouse_y_to_gui(0) == clamp(device_mouse_y_to_gui(0), 50, 50+64 )
		{scr_changevolume();}
			
		if keyboard_check_pressed(vk_up) || keyboard_check_pressed(vk_down)
		{
			pause_menu_select+= keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);
			if pause_menu_select < 0 pause_menu_select = 2
			if pause_menu_select > 2 pause_menu_select = 0
			pause_menu_select = clamp(pause_menu_select, 0, 2);
		}
		
		if keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space)
		{ //selected an option
			switch pause_menu_select
			{
				case 0: //continue
					leavenow = true; break;
				case 1: //restart
					scr_reset_level(); break;
				case 2: //quit
					if instorymode scr_return_to_menu()
					else scr_return_to_editor(); 
					break;
			}
		}
		if keyboard_check_pressed(vk_escape) {leavenow = true;}
		
		if leavenow//unpause
		{			
			with obj_onbeat {time = other.save_tome}
			with obj_MadSquare {time = other.save_tome
				if layer_sequence_exists(layer, seq) { //current animation is sped up based on notes
				layer_sequence_speedscale(seq, other.save_tome)
				}
			}
				
			state = 11;
			//audio_sound_set_track_position(songinst, takemeback/gamespeed)//resync the song if desynced
			//busted in some way due to introends
			audio_resume_sound(songinst)
		}
		
	break;
	
	case 64: //slow down after finishing level
			save_tome = tome; //so can speed back up later
			//mad rat slows down, enemies freeze
			if instance_exists(obj_MadSquare) {obj_MadSquare.time = lerp(obj_MadSquare.time, 0.2, 0.05); event_user(7)}
			spitch = lerp(spitch, 0.4, 0.05)
			audio_sound_pitch(songinst, spitch)
			slowend_timer++; 
			if slowend_timer >= slowend_length
			{
				state++; slowend_timer=0;
			}
	break;
	
	case 65: //wait a sec
			slowend_timer++; 
			if slowend_timer >= slowend_length
			{
				state++; slowend_timer=0;
			}
		break;
	
	case 66: //speed up
			if instance_exists(obj_MadSquare) {obj_MadSquare.time = lerp(obj_MadSquare.time, save_tome, 0.1);}
			spitch = lerp(spitch, 1, 0.15)
			audio_sound_pitch(songinst, spitch)
			slowend_timer++; 
			if slowend_timer >= slowend_length/2
			{
				state=69; slowend_timer=0; obj_cameraman.ending = 1;
				
				var misses = numlate + numearly 
				if misses < 30 {obj_MadSquare.howsthat = obj_MadSquare.showsthat;}
				if misses >= 40 {obj_MadSquare.howsthat = obj_MadSquare.sshrug2;}
				if misses >= 50 {obj_MadSquare.howsthat = obj_MadSquare.sheadclutch;}
			}
	break;
	
	case 69: //scoring
		if keyboard_check_pressed( ord("R") ) //reset level
		{
			scr_reset_level()
		}
		if keyboard_check_pressed(vk_escape) || keyboard_check_pressed(vk_space) || //go back to editing
			input_check_pressed(global.keyJump)||
			input_check_pressed(global.keyCharge)||
			input_check_pressed(global.keyDash)||
			input_check_pressed(global.keyDrop)
		{
			if instorymode scr_storyproceed()
			else scr_return_to_editor()
		}
	break;

	case 99: //nothing, level editing
	
		break;
}


var transpeed = 0.1
switch black_transition_state
{
	case 0: break;
	case 1:
		black_transition = flerp(black_transition, 150, transpeed)
		if black_transition == 150 black_transition_state++;
		break;
	case 2: 
		room_goto(going_to_room);
		black_transition_state++;
		state = going_to_state;
	break;
	case 3: 
		black_transition = flerp(black_transition, 300, transpeed)
		if black_transition == 300 {
			black_transition = 0; black_transition_state = 0;
		}
	break;
}

#region corner heart
//positioning in cameraman
if state != 11 {scr_changeseq(seq_blank, 1)}
#endregion