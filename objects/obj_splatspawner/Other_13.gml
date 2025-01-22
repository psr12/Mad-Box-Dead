/// @description step
// Inherit the parent event
event_inherited();

if cooldown <3 {
	part_particles_create(global.partsys, random_range(bbox_left, bbox_right), 
	random_range(bbox_top, bbox_bottom), global.part_hole, 1)

}