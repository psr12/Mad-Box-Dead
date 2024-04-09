/// @description Insert description here
// You can write your code in this editor

part_type_orientation(great, 0,0, random_range(-0.5, 0.5), 0, false)
part_type_sprite(great, spr_great, false, false, false)


if text <= -(obj_recorder.grace/2) { //miss
	part_type_sprite(great, spr_miss, false, false, false)
	
	//confetti
	repeat(10)
	{
		part_type_color1(xconfetti, choose(c_navy, c_dkgray, c_maroon, c_teal ) )
		part_particles_create(global.under_partsys, x, y, xconfetti, 1)
	}
}
else if abs(text) > (obj_recorder.grace/2)*0.9 { //okay
	part_type_sprite(great, spr_okay, false, false, false)


	if text > 0 part_type_orientation(tconfetti, 180, 180, 0, 1, false)

	//confetti
	repeat(10)
	{
		part_type_color1(tconfetti, choose(c_orange, c_yellow) )
		part_particles_create(global.under_partsys, x, y, tconfetti, 1)
	}

}
else { //great
	
	//circle
	part_particles_create(global.under_partsys, x, y, greencircle, 1)
		
	//confetti
	repeat(40)
	{
		part_type_color1(confetti, choose(c_orange, c_lime, c_yellow, c_aqua, c_red, c_green) )
		part_particles_create(global.under_partsys, x, y, confetti, 1)
	}
} 


//text
part_particles_create(global.under_partsys, x,y, great, 1 )
