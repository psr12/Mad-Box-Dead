/// @description Insert description here
// You can write your code in this editor


timer = 0;
text = 0;
alarm[0] = 1;

//if instance_exists(obj_MadSquare) {x = obj_MadSquare.x; y = obj_MadSquare.y}
sec = game_get_speed(gamespeed_fps) //1 second
sys = part_system_create()
confetti = part_type_create()
part_type_sprite(confetti, spr_confetti, false, false, false)
part_type_alpha2(confetti, 0.7,0)
part_type_orientation(confetti, 0, 359, 0, 10, true)
part_type_size(confetti, 3,4, -0.05, 0.1)
part_type_life(confetti, sec*2, sec*3)
part_type_direction(confetti, 0, 359, 0, 10)
part_type_speed(confetti, 5,10, -0.1, 0)
repeat(40)
{
	part_type_color1(confetti, choose(c_orange, c_lime, c_yellow, c_aqua, c_red, c_green) )
	part_particles_create(sys, x, y, confetti, 1)
}


//green circle
greencircle = part_type_create()
part_type_sprite(greencircle, spr_greencircle, false, false, false)
part_type_alpha2(greencircle, 0.7,0)
part_type_size(greencircle, 2,2, 0.05, 0)
part_type_life(greencircle, sec/4, sec/4)
//grow, since cant do xscale change over time

	part_particles_create(sys, x, y, greencircle, 1)

	
//poppers
popper = part_type_create()
part_type_sprite(popper, spr_poppers, true, true, false)
part_type_alpha2(popper, 0.9,0.4)
part_type_orientation(popper, 0, 359, 0, 10, true)
part_type_size(popper, 1,2, 0, 0)
part_type_life(popper, sec/4, sec/3)

repeat( irandom(1)+1 ) {
	part_particles_create(sys, x+random_range(-100, 50), y+random_range(-100, 50), popper, 1)
}

//great text
great = part_type_create()
part_type_sprite(great, spr_great, false, false, false)
part_type_alpha2(great, 0.9,0)
part_type_size(great, 2,2, -0.01, 0)
part_type_life(great, sec/2, sec/2)










