/// @description beat
// Inherit the parent event
event_inherited();

countdown--;

if countdown == 1 //1 before
{
	var xx = x+lengthdir_x(sprite_width/3, image_angle);
	var yy = y+lengthdir_y(sprite_width/3, image_angle);
	image_index = 1; //draw claws
	var boom = 1.1
	image_xscale *= boom
	image_yscale *= boom
	
	var li = time*30;
	part_type_life(global.shine,li,li)
	part_particles_create(global.partsys, xx, yy, global.shine, 1)
}