/// @description Insert description here
// You can write your code in this editor





timer--
if !timer {
	part_particles_create(global.partsys, random_range(bbox_left, bbox_right), 
	y, global.part_bubble, 1)

	timer = random(wait) + wait;
}

