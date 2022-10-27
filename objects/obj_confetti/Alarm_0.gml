/// @description Insert description here
// You can write your code in this editor

part_type_orientation(great, 0,0, random_range(-0.5, 0.5), 0, false)
part_type_sprite(great, spr_great, false, false, false)

if abs(text) > (obj_recorder.grace/2)*0.9 { //just
	part_type_sprite(great, spr_okay, false, false, false)

}
else {} //great
part_particles_create(sys, x,y, great, 1 )
