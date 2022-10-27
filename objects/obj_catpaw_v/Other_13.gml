/// @description step
// Inherit the parent event
event_inherited();

if countdown > 0 {image_alpha = lerp(image_alpha, 1, 0.2) }

if curvepos >= 0.5 mask_index = spr_blank;

if !countdown //attack at 0
{
	curvepos += curvespeed;
	var struct = animcurve_get(curve);
	var channel = animcurve_get_channel(struct, 0)
	var mult = animcurve_channel_evaluate(channel, curvepos)
	
	x += lengthdir_x(spd, image_angle) * mult 
	y += lengthdir_y(spd, image_angle) * mult
	if curvepos >= 1 instance_destroy()
}
else //follow  player
{
	x = obj_MadSquare.x+xdist
	y = obj_MadSquare.y+ydist
}

if countdown < 0 ///fade
{
	image_alpha = lerp(image_alpha, 0, 0.2)
}


image_xscale = lerp(image_xscale, scale, 0.1)
image_yscale = lerp(image_yscale, scale, 0.1)