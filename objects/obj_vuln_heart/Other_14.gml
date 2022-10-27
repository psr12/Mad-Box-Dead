/// @description destroy self



instance_destroy();
var so = audio_play_sound(snd_squawk, 1, 0)
audio_sound_pitch(so, 1+ 0.05*time)

instance_create(x,y+200, obj_pickup);
instance_create(x+350,y+200, obj_pickup);
instance_create(x-350,y+200, obj_pickup);

if instance_exists(obj_blank_rat)
{
	obj_blank_rat.state++;
}