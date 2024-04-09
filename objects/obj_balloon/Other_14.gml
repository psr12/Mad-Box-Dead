/// @description destroy self



instance_destroy();
var so = audio_play_sound(snd_balloon, 1, 0)
audio_sound_pitch(so, 1+ 0.05*time)


if instance_exists(obj_ratgodboss ) {
	var i = 0;	
	repeat(360/20-1)
	{
		var line = instance_create(x, y, obj_visualizer)
		line.direction = i;
		i+=360/20
	}
}