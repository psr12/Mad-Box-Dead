/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if state == 0 {
timer += 0.03
needlex = x + sin(timer)*500
if keyboard_check_pressed(vk_space){
	state++;
	}
}

if state == 1 {
	needley = lerp(needley, y-sprite_get_height(spr_needle)*0.8, 0.2);
	
	if collision_point(needlex, needley+sprite_get_height(spr_needle), id, false, false)
	{
		if musicon == 1 {
			audio_sound_gain(music, 0, 30)
			audio_sound_gain(music2, 1, 30)
			musicon = 2
			play_sound(snd_stab,pitch)
			win = true;
		}
		if musicon == 2 && timeleft > 0 {
			
			distort= lerp(distort, 80, 0.05);
			disoff+=0.01;

		var spo = layer_get_fx("Effect_1")
		fx_set_parameter( spo ,"g_DistortAmount", distort )
		fx_set_parameter( spo ,"g_DistortOffset", disoff )
		}
	}
	else {
		wtf++;
		if wtf > 80 {headrot = Approach(headrot, sign(x-needlex) * 5, 1 )}
	}
	
}