/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

image_xscale = 1;
image_yscale = 1;

if musicstarted {mask_index = spr_blank;
	if instance_exists(obj_MadSquare)
	x = obj_MadSquare.x -500
	y = obj_MadSquare.y-500
	}

if image_alpha < 1 image_alpha += 0.01

instance_activate_object(obj_meteor)
instance_activate_object(obj_pillar)
instance_activate_object(obj_starstorm)
instance_activate_object(obj_scythe)

if instance_number(obj_ratgod) > 1 
{
	instance_destroy(instance_find(obj_ratgod, 0) )
	play_sound(snd_enemydeath, 1)
	part_particles_create(global.partsys, x, y+sprite_height/3, global.part_cloud, 25)
}