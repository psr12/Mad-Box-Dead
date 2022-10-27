/// @description 'step'

// Inherit the parent event
event_inherited();

y = flerp(y, ystart, 0.5)

if y == ystart {x = xstart+random(shake); shake = zlerp(shake, 0.1)}


