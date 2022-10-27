/// @description Insert description here
// You can write your code in this editor

event_inherited()

prompt = "Shoot!"

seq = layer_sequence_create("seqback", room_width/2, room_height/2, seq_hotplatebg)

play_sound(snd_braingame, pitch);

x = room_width/2+10; 
y = 700-10;

image_scale(1.2);

imphealth = 2;

index = 0; // for animating sprites
sindex = 0; //just for shotgun

impscale = 4;
impscaleinit = 4;

impscalespeed = 0.005;