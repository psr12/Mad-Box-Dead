/// @description Insert description here
// You can write your code in this editor


timer++;

if timer == 30 and abs(text) <= (obj_recorder.grace/2)*0.9
{

	//poppers
	repeat( irandom(1)+1 ) {
		part_particles_create(global.under_partsys, x+random_range(-200, 50), y+random_range(-200, 50), popper, 1)
	}


}

if timer > sec*4 {instance_destroy()}