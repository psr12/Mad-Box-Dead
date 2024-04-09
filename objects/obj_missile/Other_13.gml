/// @description Insert description here
// You can write your code in this editor



part_particles_create(global.partsys, x, y, particle, 1)

timer++; //for waggle
image_angle = dir + sin(timer/9)*20

if state == 0 { //spawn, going up and stopping
	
	spd = Approach(spd, 0, 0.2)
}

if state == 1 { //activated, target and hop upwards
	targetx = obj_MadSquare.x
	dir = point_direction(x, y, targetx, targety)
	play_sound(snd_lockon2, 0.9);
	spd = -5;
	state++;
}

if state == 2 {
	targeter_timer--;
	timer+=inc; //waggle faster
	spd += inc; //travel faster
	inc += 0.04;
	x += lengthdir_x(spd, dir)
	y += lengthdir_y(spd, dir)
	
	if place_meeting(x, y, obj_cheese)
	{
		state++;
		play_sound( choose( Cmn_BombA, Cmn_BombB, Cmn_BombC), 0.96 + random(0.1) )
		
		if collision_circle(targetx, targety, 5, obj_MadSquare, false, false)
		{scr_killmadrat() }
		
		instance_destroy();
		part_particles_create(global.partsys, x, y, global.part_cloud, 10);
	//	part_particles_create(global.partsys, targetx, targety, global.popper, 1)
	}
}


// Inherit the parent event
event_inherited();

