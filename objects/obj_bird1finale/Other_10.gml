/// @description beat
event_inherited();



if state == 1 {wait--;
	if wait <= 0 {
		state=2; wait = 6
		play_sound(snd_eagle,0.90)
		instance_create(x-150, y+500, obj_warningbox)
		instance_create(x+150, y+500, obj_warningbox)
	}
}

if state == 2 {wait --}