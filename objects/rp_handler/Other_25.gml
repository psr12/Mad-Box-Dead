/// @description exactly on beat

//if waitabeat {waitabeat = false}
combo_bulge = 0.5;

 if state = 5 {
		//if keyboard_check_pressed(vk_space) //to simulate a beat passing
		{
			if !matching {
				#region list match checks
					var march = ds_list_create()
						ds_list_add(march, "pata","pata","pata","pon")

							if(ds_list_size(march) == ds_list_size(chaka_list)) {
							    for(var i = 0; i < ds_list_size(march); i++) {
							        if(ds_list_find_value(march, i) != ds_list_find_value(chaka_list, i)) {
							            equal = false;
							            break;
							        }
							    }
								if i == ds_list_size(chaka_list) matching = 1;//march	
							} 

					var attack = ds_list_create()
						ds_list_add(attack, "pon","pon","pata","pon")
		
							if(ds_list_size(attack) == ds_list_size(chaka_list)) {
							    for(var i = 0; i < ds_list_size(attack); i++) {
							        if(ds_list_find_value(attack, i) != ds_list_find_value(chaka_list, i)) {
							            equal = false;
							            break;
							        }
							    }
								if i == ds_list_size(chaka_list) matching = 2; //attack	
							} 
							
					var guard = ds_list_create()
						ds_list_add(guard, "chaka","chaka","pata","pon")
		
							if(ds_list_size(guard) == ds_list_size(chaka_list)) {
							    for(var i = 0; i < ds_list_size(guard); i++) {
							        if(ds_list_find_value(guard, i) != ds_list_find_value(chaka_list, i)) {
							            equal = false;
							            break;
							        }
							    }
								if i == ds_list_size(chaka_list) matching = 3; //guard	
							} 
							
					var flee = ds_list_create()
						ds_list_add(flee, "pon", "pata", "pon", "pata")
		
							if(ds_list_size(flee) == ds_list_size(chaka_list)) {
							    for(var i = 0; i < ds_list_size(flee); i++) {
							        if(ds_list_find_value(flee, i) != ds_list_find_value(chaka_list, i)) {
							            equal = false;
							            break;
							        }
							    }
								if i == ds_list_size(chaka_list) matching = 4; //flee	
							} 
			
				if !matching{
					play_sound(snd_shotgun)
					state = 0;
					ds_list_clear(chaka_list)
					combo = 0;
					combo_count = 0;
					fever = false;
					combo_color = c_gray;
				}

			}
			#endregion
							
				switch matching { //effects of pata patas
						case 1: //march
							rp_leader.hsp = 4
							if fever rp_leader.hsp = 6
							rp_follower.state = 0;
							obj_recorder.corner_heart_overwrite = csh_pointside
						break;
						case 2: if combo == 4 //attack
						{rp_follower.state = 2;
							obj_recorder.corner_heart_overwrite = ch_fistpump}
														rp_leader.hsp = 2
						break;
						case 3: //guard	
							if combo == 4 rp_follower.state = 3;
							obj_recorder.corner_heart_overwrite = ch_scared
						break;
						case 4: //flee	
							if combo == 4 {rp_follower.state = 4; rp_leader.hsp = -12}
							else rp_leader.hsp = 0
							obj_recorder.corner_heart_overwrite = ch_shocked
						break;
					}
					
			var repos = combomax - combo;
			current_chaka_bulge = 1.2;
			var twosounds = false;
			
			switch chaka_list[| repos]
			{
				case "pata": twosounds = true break;
				case "pon": break;
				case "chaka": twosounds = true break;
			}
			play_sound(voice)
			
			if twosounds alarm[0] = 15;
			
			if combo == 4 {
									combo_count++;
						if combo_count > 4 and !fever {
							play_sound(snd_fever)
							fever = true;
							combo_color = c_red
						}
					}
			alarm[8] = 20
			combo--;
			if combo <= 0 {state = 0; combo = 0; ds_list_clear(chaka_list) 
					matching = 0;
					if floor(rp_follower.state) != 3 rp_follower.state = 0;
					rp_follower.stopped = 0;
					rp_leader.hsp = 0;
					obj_recorder.corner_heart_overwrite = 0

				}
		}
}
