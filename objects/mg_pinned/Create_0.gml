/// @description Insert description here
// You can write your code in this editor

event_inherited()

prompt = "Prick!"

seq = layer_sequence_create("seqback", room_width/2, room_height/2, seq_pinned)

image_scale(1.5)

x = room_width/2
y = room_height/2 + 125


needlex = x
needley = 100;

music = play_sound(snd_talltower1, pitch)
music2 = play_sound(snd_talltower2, pitch)
audio_sound_gain(music2, 0, 0)
musicon = 1;

distort = 0;
disoff = 0;

headrot = 0;

wtf = 0;