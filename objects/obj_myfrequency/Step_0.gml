/// @description Insert description here
// You can write your code in this editor





if state == 0 { //setup
	
	songinst = audio_play_sound(song_madratheart, 1, 1, 0)
	fuzz = audio_play_sound(snd_static, 1, 1, 0)
	state++;
}


if state == 1 { //ramp up
	timer++;
	var ramptime = 160;
	gain -= 1/ramptime
	image_alpha += 1/ramptime
	y -= 100/ramptime;
		audio_sound_gain(fuzz, 1-gain , 0)

	if timer > ramptime {state++; image_alpha = 1; gain = 0; }
}

if state == 2 { //dialing
	
	var input = (input_check(global.keyRight) - input_check(global.keyLeft)) *5
	+ sign(round(gamepad_axis_value(global.activeController, gp_axislh)) 
	+round(gamepad_axis_value(global.activeController, gp_axisrh))) *5
	dial1 -= input
	dial1 = clamp(dial1, 0, 3000);
	
	
	var maxdist = 100
	var targetdial = 2200
	if abs(dial1 - targetdial) < maxdist 
	{ gain =    1 - abs(dial1 - targetdial) / maxdist
		}
	else gain = 0
	
	audio_sound_gain(songinst, gain , 0)
	audio_sound_gain(fuzz, 1-gain , 0)
	audio_sound_pitch(fuzz, 1 + sin(dial1)/2 )
	if input == 0 usethese++
	else usethese = 0;
	
	if abs(dial1-targetdial) < 100 and input == 0 {timer++}
	else timer = 0
	if timer > 120 {state++}
}

if state == 3 { //win
	
	audio_sound_gain(songinst, 0.7, 0)
	audio_sound_gain(fuzz, 0, 0)
	bpm = 132;
	image_blend = c_white
	state++;
	timer=0;
}

if state == 4 {
	
	timer++;
	if timer > 120 * 3 {
		if instance_exists(obj_cutscenehandler) obj_cutscenehandler.onscene++;
		audio_sound_gain(songinst, outamyway, 300)
		timer = 0;
		state++;
	}

}

if state == 5 {
	image_alpha = Approach(image_alpha, 0, 0.01) 
}

if state == 6 {
	outamyway = Approach(outamyway, 0, 0.005)
			audio_sound_gain(songinst, outamyway, 300)

}


time = (get_timer() - start_time);

div_4_previous = div_4;
div_4 = (floor(time/(micros_per_sec/bpm)) mod 4) + 1 ;

if div_4_previous != div_4 {
		heartpump = 0.1;
		heartstasis = heartnormalsize - 0.1;
		
		image_index = 0;
		image_speed = 1.5;
}



		heartpump = Approach(heartpump, 0, 0.001)
		heartstasis = Approach(heartstasis, heartnormalsize, 0.001)
		heartsize = Approach(heartsize, heartstasis, 0.001)

		





