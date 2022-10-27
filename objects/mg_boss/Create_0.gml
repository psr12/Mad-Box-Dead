/// @description Insert description here
// You can write your code in this editor

event_inherited()

timeleft = 9999;
makeitstop = -1;
ambience = audio_play_sound(amb_prologue_inside, 1, 1);

x = room_width/2
y = 200;

ringsize = 0;
maxringsize = 150;

toffset = 0;
tmax = 200;
tready = 650;

startofend = false; //true once at 132 bpm 

seq = layer_sequence_create("seqfront", room_width/2, tready-50, asq_mr_dashdash)
//backwall = layer_sequence_create("seqfront", room_width/2, room_height/2, seq_bossbg)
ratscale = 2;
layer_sequence_xscale(seq, ratscale)
layer_sequence_yscale(seq, ratscale)

pitch = 1;

heartnormalsize = 1;
heartsize = heartnormalsize;
heartpump = 0;
heartstasis = heartnormalsize;


start_time = get_timer();
time = 0;
micros_per_sec = 60000000;
nextbeat = 1;
lastbeat = 0;

bpm = 66;
div_4_previous = 0
div_4 = 0;