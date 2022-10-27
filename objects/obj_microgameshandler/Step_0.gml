/// @description Insert description here
// You can write your code in this editor

if keyboard_check_pressed(ord("R")) game_restart()
if keyboard_check(vk_escape) quitting++;
else quitting = Approach(quitting, 0, 1)
if quitting > 300 {
room_goto(MainMenu)

ini_open("keybindings.ini")
	ini_write_real("settings", "microgames", false)
ini_close()

audio_stop_all()
}


#region beat clock

time = (get_timer() - start_time);

div_4_previous = div_4;
div_4 = (floor(time/(micros_per_sec/bpm)) mod 4) + 1 ;

if div_4_previous != div_4 {
div_4_trigger = true;
waitforbeats--;
heartpump += 0.5;
heartstasis = 0.5;
}
else div_4_trigger = false;

		heartpump = Approach(heartpump, 0, 0.01*pitch)
		heartstasis = Approach(heartstasis, heartnormalsize, 0.01*pitch)
		heartsize = Approach(heartsize, heartstasis, 0.01*pitch)
		
#endregion

#region minigame time control
asdf += 100*pitch;
#endregion

switch state{
	case -2: 
	if !waitforbeats
	{state++; play_sound(snd_beat,1); waitforbeats = 2; }
break;
case -1: 
	if !waitforbeats {state= 2; waitforbeats = 0; 
time = get_timer() - start_time;
micros_per_sec = 60000000;}
break;
	
case 0: //finished game
	pitch+=0.01
	micros_per_sec = 60000000/pitch;
	state++; start_time = get_timer();
	if win cursound = play_sound(snd_microdone,pitch)
	if !win {cursound = play_sound(snd_microfail,pitch); hearts--}
	slideamp = 1; slidetime = 0;
	waitforbeats = 4;
	if ds_queue_size(microlist) == 0 || hearts == 1 {bossyet = true}
	break;
	
case 1: //slide in
	slidetime += 0.05*pitch;
	gamestate = 0 + sin(slidetime) * slideamp
	slideamp = Approach(slideamp, 0, 0.025*pitch)
	pageturn = Approach(pageturn, 0, 0.05*pitch)
	if slideamp == 0 {state++; sineamp = 0.2; sinetime = 0; gamestate = 0
		pageturn = 0;
		}
	break; 


case 2: //move to the beat, playing microdone
	if div_4_trigger {sineamp = 0.2; sinetime = 0}
	sinetime+= 0.1*pitch;
	sineamp = Approach(sineamp, 0, sinemove*pitch)
	if win {winsin+=0.05*pitch; }
	if !waitforbeats {
			state++; winsin = 0; win = 0;
			waitforbeats = 8;
			if bossyet {state = 2.5; //bwow bwow bum bum bum bum bum
					pitch = 1;
					micros_per_sec = 60000000/pitch;
					start_time = get_timer();
					cursound = play_sound(snd_mg_boss, pitch)
				}
				else {cursound = play_sound(snd_microintro, pitch)}
		}
	break;
	
case 2.5: 
	if div_4_trigger {sineamp = 0.2; sinetime = 0}
		sinetime+= 0.1*pitch;
	sineamp = Approach(sineamp, 0, sinemove*pitch)
	winsin+=0.05*pitch; 
		if !waitforbeats {
			state=3; waitforbeats = 8;
			winsin = 0; 
			cursound = play_sound(snd_microintro, pitch)
		}
break;
	
case 3: //move to the beat, playing microintro
	if div_4_trigger {sineamp = 0.2; sinetime = 0}
		sinetime+= 0.1*pitch;
	sineamp = Approach(sineamp, 0, sinemove*pitch)
		

		ptimer+=1*pitch; 
		if ptimer > ptime and pageturn < 3
		{pageturn++; ptimer=0
			if pageturn == 1 floornumber++;
			}
			
	if !waitforbeats {
		
		state++; slidetime = 0;
	
	
		var minigame = ds_queue_dequeue(microlist)
		
		if bossyet	var minigame = mg_boss
			
			//var minigame = mg_boss
		
		instance_create_layer(room_width/2, room_height/2, "minigames", minigame);
		
		asdf = 0;
		}
	break;
	
case 4: //slide out
	slidetime += 0.005*pitch;
	gamestate = Approach(gamestate, 1, slidetime);
	pageturn = Approach(pageturn, -1, 0.5*pitch);
	if gamestate == 1 {	 state = 5}
	break; 
	
case 5: //in minigame
	
	break;
}

if state == 4 || state == 5 { //controls minigame time
	if div_4_trigger {
		with par_microgames {event_user(3) } //on the beat
	}
	while asdf >=100
	{
		with par_microgames { event_user(0) } //step
		asdf-=100;
	}
}