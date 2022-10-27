/// @description Insert description here
// You can write your code in this editor

event_inherited()

prompt = "Choose!"

//mouse = layer_sequence_create( "seqback" ,x,y+400, seq_thinkingrat)
//var mousescale = 1.5;
//layer_sequence_xscale(mouse, mousescale)
//layer_sequence_yscale(mouse, mousescale)

seq = layer_sequence_create( "seqback" ,x,y, seq_trolleybg )

xmid = room_width/2
ymid = room_height/2
var wdist = 400;
wix = xmid - wdist;
wax = xmid + wdist;

wiy = ymid-100;
way = ymid-100;

wsway = 100;

victimy = ymid+wsway+100;

whodies = 0;

leftright = 0;

win = false;

partsys = part_system_create()

partcen = part_type_create()
part_type_sprite(partcen, spr_censored, 0, 0, 0)
part_type_size(partcen, 1, 2, 0, 0.5)
part_type_gravity(partcen, 0.2, 270)
part_type_direction(partcen, 40, 160, 0, 0.5)
part_type_orientation(partcen, -20, 20, 0, 0.5,false)
part_type_speed(partcen, 6,7, 0, 0)


play_sound(snd_sweettrip, pitch)




