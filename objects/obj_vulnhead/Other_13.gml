/// @description 'step'

// Inherit the parent event
event_inherited();

if !wait {
if y < ystart y = flerp(y, ystart, 0.5)
else image_index = 1
}
if y >= ystart {x = xstart+random(shake); shake = zlerp(shake, 0.1)}


with obj_birdboss2 {drawy = lerp (drawy, ystart + 500, 0.1)
	image_alpha = zlerp(image_alpha, 0.2);
}

var getto = lerp(image_xscale, 8, 0.1)
image_scale(getto)