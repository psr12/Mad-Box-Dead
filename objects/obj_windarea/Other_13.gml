/// @description Insert description here
// You can write your code in this editor

event_inherited();

if state = 0 {
	if place_meeting(x,y, obj_MadSquare)
	{
		baby = instance_create_depth(tx, ty, depth, it);
		baby.image_xscale = xsize
		baby.image_yscale = ysize
		baby.image_angle = image_angle;
		baby.spd = spd;
		state = 1;
	}

}

if state == 1 {
	
	if place_meeting(x,y,obj_MadSquare)
	{
		if !audio_is_playing(sound)
		play_sound(sound, 1+ random(ranrange) )
	}
	else {
		state = 0; instance_destroy(baby);
	}
}