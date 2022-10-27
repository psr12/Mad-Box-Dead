/// @description Insert description here
// You can write your code in this editor

//glow, twice per second
asdf+= 1/( game_get_speed(gamespeed_fps) /2);



if state == 0 {
	if !buggy image_alpha = abs( sin(asdf ) ) //glowing
	else image_alpha = 0;
	balpha = lerp(balpha, 0, 0.1);
}

//end level
if place_meeting(x,y,obj_MadSquare) and state = 0
{
		with obj_recorder	takemeback = ds_list_size(backup) - (ds_list_size(notelist) - ds_list_size(backup) ) ; //where the song was stopped
	state=1;
	room_goto(romlist[onroom] )
	onroom++;
	alarm[0] = 10;
	play_sound(snd_teleport, 1)
}

if state == 1 {balpha = lerp(balpha, 1, 0.1);}

if room = MainMenu || room == Room1
{instance_destroy()}
