/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

timeleft--;
timeuntil--;


if timeuntil == 0 	{scr_shakecamera(30) play_sound(snd_chaosbreaker, 0.5) }

if !timeleft {

		var partdist = 120;
		var num = sprite_height/partdist;
		var dir = image_angle+90;
		var i = -num/2;
				repeat(num) {
					part_particles_create(global.partsys, x+lengthdir_x(partdist*i, dir),
					y+lengthdir_y(partdist*i, dir), global.part_laserline, 1 );
					i++;
				}
				
	instance_destroy();

}
