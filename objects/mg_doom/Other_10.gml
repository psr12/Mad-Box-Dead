/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
	var gamespeed = game_get_speed(gamespeed_fps)


index++;
if !imphealth { 
	var impspeed = sprite_get_speed(spr_impdeath)
index = clamp(index, 0, (sprite_get_number(spr_impdeath)-1)*(gamespeed/impspeed ))
}
else {impscale = Approach(impscale, impscaleinit+4, impscalespeed) }

switch state {
	
case 0:
	
	if keyboard_check_pressed(vk_space)
	{
		state = 1;
		imphealth--;
		play_sound(snd_shotgun,pitch);
		if imphealth == 0{
			index = 0; win = true;
			play_sound(snd_bird_whistle,pitch)
		}
		if imphealth > 0 impscale -= 1
	}
	
break;

case 1:
	var sgs = spr_shotgun
	sindex += (sprite_get_speed(sgs)/gamespeed);
	if sindex > sprite_get_number(sgs)-1
	{
		sindex = 0; state = 0;
	}
break;
	
	
}


