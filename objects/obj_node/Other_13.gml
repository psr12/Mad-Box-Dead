/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

x = lerp(x, targetx, 0.1);
y = lerp(y, targety, 0.1);

if flash {
	flash = false;
	image_alpha = 1;
	alarm[0] = 10
	if flashsound play_sound(Hit_ThrustC, 3.5 + y*0.001 + x*0.001)
}

	image_scale(scale)
	scale = lerp(scale, orgscale, 0.2)
	