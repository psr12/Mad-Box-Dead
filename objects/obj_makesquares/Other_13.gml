/// @description Insert description here
// You can write your code in this editor




part_particles_create(global.partsys, x, y, global.part_laserline, 1);


x = lerp(x, targetx, 0.2);
y = lerp(y, targety, 0.2);



// Inherit the parent event
event_inherited();

