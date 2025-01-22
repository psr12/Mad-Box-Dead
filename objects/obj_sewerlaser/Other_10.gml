/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

timeleft--;
timeuntil--;


if timeuntil == 0 	{scr_shakecamera(30) 
	
	if instance_exists(obj_ratgodboss) or instance_exists(obj_ratgod) play_sound(snd_chaosbreaker, 0.5) 
	// instance_exists(obj_sewerboss) or 
	//audio_sound_gain(soun, 1/instance_number(obj_sewerlaser), 0)
	//with obj_sewerlaser {if timeuntil <=0 timeuntil = -1}
	}

if !timeleft {

	if instance_exists(obj_ratgodboss) {
		var partdist = 120;
		var num = sprite_height/partdist;
		var dir = image_angle+90;
		var i = -num/2;
				repeat(num) {
					part_particles_create(global.partsys, x+lengthdir_x(partdist*i, dir),
					y+lengthdir_y(partdist*i, dir), global.part_laserline, 1 );
					i++;
				}
	}
	instance_destroy();

}
