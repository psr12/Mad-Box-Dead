/// @description 'step'

// Inherit the parent event
event_inherited();

if y < ystart y = flerp(y, ystart, 0.5)
else y += 5;

if y >= ystart {x = xstart+random(shake); shake = zlerp(shake, 0.1)}




