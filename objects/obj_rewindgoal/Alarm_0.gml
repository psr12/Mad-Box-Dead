/// @description Insert description here
// You can write your code in this editor


if instance_exists(obj_MadSquare)
{
	obj_MadSquare.x = obj_memrat.x
	obj_MadSquare.y = obj_memrat.y
}

x = obj_memgoal.x
y = obj_memgoal.y


state = 0;

global.zoom = 1.5

	//with obj_recorder	audio_sound_set_track_position(songinst, takemeback/gamespeed)//resync the song if desynced


buggy = true;
