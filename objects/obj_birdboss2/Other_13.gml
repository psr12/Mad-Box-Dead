/// @description 'step'

// Inherit the parent event
event_inherited();



if instance_exists(obj_MadSquare)
{

	obj_MadSquare.gusth = gust_power * gust;

}


image_alpha = lerp(image_alpha,  0.2, 0.05)
drawy = lerp(drawy, ystart, 0.02)

if gust != 0{

		if gust part_type_direction(global.part_leaf, 0, 0, 0, 0)
		else part_type_direction(global.part_leaf, 180, 180, 0, 0)
		part_particles_create(partsys, random_range(0, room_width), random_range(0, room_height), 
		global.part_leaf, 1)
}
//gust = keyboard_check(ord("P")) - keyboard_check(ord("I"))