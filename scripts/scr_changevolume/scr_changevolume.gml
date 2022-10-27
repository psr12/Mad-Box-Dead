// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_changevolume(){
				var svolchange = 0.05;
				if keyboard_check(vk_shift) svolchange = 0.10
				songvolume += (mouse_wheel_up() - mouse_wheel_down()) * svolchange
				songvolume = clamp(songvolume, 0, 5)
				audio_sound_gain(songinst, songvolume, 0)
}