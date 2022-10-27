/// @description Insert description here
// You can write your code in this editor

event_inherited()
pillrotation = 0;

prompt = "Chomp!"
xoffset = 90
yoffset = 190
x = 400 + xoffset
y = 600 - yoffset
seq = layer_sequence_create( "seqback" ,x-xoffset,y+yoffset,seq_chompingrat )
seqbg = layer_sequence_create( "seqback" ,room_width/2, room_height/2,seq_chompingbg )

scale = 3;
layer_sequence_xscale(seq,scale)
layer_sequence_yscale(seq,scale)

lineoffset = 0;
play_sound(snd_cheddarchaser,pitch)



pills = ds_list_create()
var q= 0;
repeat(7) {
	q++
	ds_list_add(pills, //subimg, rotationoffset, 
	[
		q mod ( sprite_get_number(spr_pill)-1 ),
		irandom( 360 )
	]
	)
}

