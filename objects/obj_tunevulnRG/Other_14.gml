/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();


with progenitor { //set off parent's event4
	event_user(4)
}

	instance_destroy()
	
	play_sound(snd_enemydeath2,1)

	play_sound(Hit_Shock,1)
	part_particles_create(global.partsys, x, y, global.part_sparks, 10);


scr_shakecamera(50)