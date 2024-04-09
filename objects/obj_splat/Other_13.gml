/// @description  'step'
// Inherit the parent event
event_inherited();

//collision ect


if state == 0 {
	var dist = topspeed + extra
hsp = lengthdir_x(dist, image_angle)
vsp = lengthdir_y(dist, image_angle)

extra = lerp(extra, 0, 0.1)

x += floor( hsp )  * image_xscale
y += floor( vsp )  * image_yscale

}

if state = 86
{
	image_alpha = Approach(image_alpha, 0, 0.1)
	if !image_alpha instance_destroy();
	part_particles_create(global.partsys, random_range(bbox_left, bbox_right), 
	random_range(bbox_top, bbox_bottom), global.part_hole, 1)
}