/// @description 'step'

// Inherit the parent event
event_inherited();

width = lerp(width, endwid, 0.1);

alpha = zlerp(alpha, 0.05)

if !wait {

spd+=2;

hsp = lengthdir_x(spd, dir)
vsp = lengthdir_y(spd, dir)

x += hsp;
y += vsp;

image_angle = dir;
}
