/// @description Insert description here
// You can write your code in this editor





timer--;
if !timer {
part_particles_create(global.partsys, x+random(100)-50, 
y+random(100)-50, global.part_hole, 1)
timer = wait;
}


