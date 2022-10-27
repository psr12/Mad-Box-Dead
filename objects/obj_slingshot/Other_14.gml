/// @description destroy self



instance_destroy();
var so = audio_play_sound(snd_zap, 1, 0)
audio_sound_pitch(so, 1+ 0.05*time)