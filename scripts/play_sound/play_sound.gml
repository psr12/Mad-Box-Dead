// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function play_sound(sound, pitch){
var mmk = audio_play_sound(sound, 1, false)
if pitch != undefined audio_sound_pitch(mmk, pitch)
return mmk;
}