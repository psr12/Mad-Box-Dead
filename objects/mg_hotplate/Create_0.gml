/// @description Insert description here
// You can write your code in this editor

event_inherited()

prompt = "React!"

seq = layer_sequence_create("seqback", room_width/2, room_height/2, seq_hotplatebg)

x = room_width/2;
y = 600;

ratx = x;
raty = y-150;

ratsprite = mr_idle1

timer = 0;

gethot = 120 * (random(1) + 1  )

starttime = 0;
time=0;

state=0;

reactionspeed = 0;

image_scale(5);

play_sound(snd_nosferatu, pitch);