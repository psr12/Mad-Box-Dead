/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
scale = 4;

initxscale = scale
inityscale = scale

action_time = 20; //how long zooping animation is, real frames


state = 0;

beats=0;
x += 100;

stru = animcurve_get(ani_speedupdlowdown)
chan = animcurve_get_channel(stru, 0)
curvespeed = 1/action_time;
curvepos = 0;

image_yscale = scale/2; //smear height

var zoop = audio_play_sound(snd_lockon, 1,0)
audio_sound_pitch(zoop, 2)