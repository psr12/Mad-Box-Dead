/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();


if state == 0
{
hsp = lengthdir_x(drivespeed, dir)
vsp = lengthdir_y(drivespeed, dir)

x += hsp;
y += vsp; 

var changeby = 1;
if keyboard_check(vk_up) dir+= changeby
if keyboard_check(vk_down) dir-= changeby

image_angle = dir;

if !audio_is_playing(snd_yiplatform)
{
	play_sound(snd_yiplatform, pitch*3)
}

if place_meeting(x,y,obj_mg_car) 
	{
		state = 1
		play_sound(snd_wariocrush,pitch)
		play_sound(snd_wrong,pitch)
	}
if place_meeting(x,y,obj_mg_win) 
	{
		state = 1
		play_sound(snd_correct,pitch)
		win = true;
	}
}


if state == 1 {
	//stop moving
}