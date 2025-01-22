/// @description beat
// Inherit the parent event
event_inherited();

cooldown--


if !cooldown {
	var baby = instance_create(x, y, obj_splat)
	with baby {
		image_xscale = other.image_xscale
		image_yscale = other.image_yscale
		image_angle = other.image_angle
	}
	cooldown = maxcooldown;
}