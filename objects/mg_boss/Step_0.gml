/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
	
grace = 120000; //hard number, for speed
//60000000*0.002; //grace length
time = (get_timer() - start_time);

div_4_previous = div_4;
div_4 = (floor(time/(micros_per_sec/bpm)) mod 4) + 1 ;

if div_4_previous != div_4 {
div_4_trigger = true;
ringsize = maxringsize;
if !audio_is_playing(song_madratheart) and startofend {
	music =	play_sound(song_madratheart,1) 
		audio_sound_gain(music, 0, 0)
		audio_sound_gain(music, 1, 5000)
		if !makeitstop {instance_create(x,y, obj_bossmgtransition); 
		
		ini_open("keybindings.ini")
			ini_write_real("settings", "microgames", false);
		ini_close()
		
		layer_sequence_destroy(seq)
		seq = layer_sequence_create("seqfront", room_width/2, tready-50, asq_mr_trip1)
		layer_sequence_xscale(seq, ratscale)
		layer_sequence_yscale(seq, ratscale)
		
		makeitstop = true;}
	}
	
	if startofend { //start of end has started
		if layer_sequence_is_finished(seq) {
		layer_sequence_destroy(seq)
		seq = layer_sequence_create("seqfront", room_width/2, tready-50, asq_mr_trip2)
		layer_sequence_xscale(seq, ratscale)
		layer_sequence_yscale(seq, ratscale)
		layer_sequence_speedscale(seq, 2)
		}
		
		
	}
	if instance_exists(obj_bossmgtransition) 
	{
		with obj_bossmgtransition {event_user(3) }
	}
	
	
	
}
		heartpump = Approach(heartpump, 0, 0.01*pitch)
		heartstasis = Approach(heartstasis, heartnormalsize, 0.01*pitch)
		heartsize = Approach(heartsize, heartstasis, 0.01*pitch)
		toffset = lerp(toffset, 0, 0.05*pitch)
		
		var onebeat = (micros_per_sec/bpm) //length of one beat
		var beatnum = time/(micros_per_sec/bpm) //current beat, NOT OUT OF 4, NOT FLOORED
		var lastbeatnum = floor(time/(micros_per_sec/bpm) ) //^^^ but floored
		ringsize = (1-(beatnum - lastbeatnum)) * maxringsize;
		
lastbeat = lastbeatnum;
nextbeat = lastbeat+1;


if keyboard_check_pressed(vk_anykey)
{
	
	var lbp = lastbeat * onebeat //grab microsec positions of the last and next beat
	var nbp = nextbeat * onebeat
	
	var closestbeat = min( //in microseconds
		abs(time - lbp),
		abs(time - nbp),
	)
	if closestbeat < grace //if within grace # of micros from any beat
	{
		var hartbeat = play_sound(snd_ekg,1) 
				if instance_exists(obj_bossmgtransition) {
				audio_sound_gain(hartbeat, 1-obj_bossmgtransition.alpha, 0) }
				
		if bpm < 132 {// mad rat heart's bpm
		bpm+=2
		pitch += 0.04
		start_time = get_timer();
		time = 0;
		}
		else if !startofend {
			//make transition obj
			startofend = true;
			audio_sound_gain(ambience, 0, 8000)
		}
	
		heartpump = 0.5;
		heartstasis = heartnormalsize - 0.5;
		var mbdist = 86;
		var f1 = instance_create_depth(x-mbdist, y, depth, obj_flairend)
		var f2 = instance_create_depth(x+mbdist, y, depth, obj_flairend)
		f1.sprite_index = spr_yellowslams
		f2.sprite_index = spr_yellowslams
		f2.image_xscale = -f2.image_xscale
		
		if !startofend {
		layer_sequence_headpos(seq, 0)
		layer_sequence_play(seq)
		layer_sequence_speedscale(seq, pitch/2)
			toffset = tmax;
		}
	}
	
}