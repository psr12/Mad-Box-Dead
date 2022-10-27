/// @description Insert description here
// You can write your code in this editor


timer++;

if timer == 30
{
	repeat( irandom(1)+1 ) {
		part_particles_create(sys, x+random_range(-100, 50), y+random_range(-100, 50), popper, 1)
	}
}

if timer > sec*4 {instance_destroy()}