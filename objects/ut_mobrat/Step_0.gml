/// @description Insert description here
// You can write your code in this editor









if state == 999 {//dead
	instance_destroy(seqdummy)
	image_alpha = 0.2;
	part_particles_create(global.partsys, x, y, global.part_cloud, 20)
	play_sound(snd_mobratdie, 1)
	state++;
}
