/// @description Insert description here
// You can write your code in this editor


timer = 0;
text = 0;
alarm[0] = 1;

//if instance_exists(obj_MadSquare) {x = obj_MadSquare.x; y = obj_MadSquare.y}
sec = game_get_speed(gamespeed_fps) //1 second

confetti = part_type_create()
part_type_sprite(confetti, spr_confetti, false, false, false)
part_type_alpha2(confetti, 0.7,0)
part_type_orientation(confetti, 0, 359, 0, 10, true)
part_type_size(confetti, 3,4, -0.05, 0.1)
part_type_life(confetti, sec*2, sec*3)
part_type_direction(confetti, 0, 359, 0, 10)
part_type_speed(confetti, 5,10, -0.1, 0)

xconfetti = part_type_create()
part_type_sprite(xconfetti, spr_xconfetti, false, false, false)
part_type_alpha2(xconfetti, 0.7,0)
part_type_orientation(xconfetti, 0, 0, 0, 1, false)
part_type_size(xconfetti, 1,2, -0.05, 0.1)
part_type_life(xconfetti, 60, 90)
part_type_direction(xconfetti, 0, 359, 0, 10)
part_type_speed(xconfetti, 18,25, -2, 0)

tconfetti = part_type_create()
part_type_sprite(tconfetti, spr_tconfetti, false, false, false)
part_type_alpha2(tconfetti, 0.7,0)
part_type_orientation(tconfetti, 0, 0, 0, 1, false)
part_type_size(tconfetti, 1,1.5, -0.05, 0.1)
part_type_life(tconfetti, 50, 90)
part_type_direction(tconfetti, 0, 359, 0, 10)
part_type_speed(tconfetti, 18,25, -2, 0)



//green circle
greencircle = part_type_create()
part_type_sprite(greencircle, spr_greencircle, false, false, false)
part_type_alpha2(greencircle, 0.7,0)
part_type_size(greencircle, 2,2, 0.05, 0)
part_type_life(greencircle, sec/4, sec/4)
//grow, since cant do xscale change over time

	

//poppers
popper = part_type_create()
part_type_sprite(popper, spr_poppers, true, true, false)
part_type_alpha2(popper, 0.9,0.4)
part_type_orientation(popper, 0, 359, 0, 10, true)
part_type_size(popper, 1,2, 0, 0)
part_type_life(popper, sec/4, sec/3)



//great text, if okay change in alarm[1]
great = part_type_create()
part_type_sprite(great, spr_great, false, false, false)
part_type_alpha2(great, 0.9,0)
part_type_size(great, 2,2, -0.01, 0)
part_type_life(great, sec/2, sec/2)










