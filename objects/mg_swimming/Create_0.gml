/// @description Insert description here
// You can write your code in this editor

event_inherited()

prompt = "Swim!"

x = -100;
y = 380;
ystart = y;
hsp = 17;
updown = 0;

drown = 5;
s1 = spr_ratswim1
s2 = spr_ratswim2

scale = 1.5
image_scale(scale)

seq = layer_sequence_create( "seqback", room_width/2, room_height/2,seq_swimmingbg )


play_sound(snd_drain,pitch)