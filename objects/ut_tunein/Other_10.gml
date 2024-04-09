/// @description note hit



bulge += 1;

hits--;
if hits <=0 {
	play_sound(snd_big_impact, 1.5)
	with ut_player state++;
			var damage = irandom_range(200, 222);
	with UT_PAR_ENEMY {shake = 50;
		hp = Approach(hp,0,damage)
		part_particles_create(global.partsys, x, y, global.part_cloud, 20)
		var baby = instance_create(x, y, ut_damagenumber)
		baby.dam = damage
		
		if hp <= 0 { //end battle
			state = 999;
			part_particles_create(global.partsys, x, y, global.gear_part, 10)
			with ut_player state = 779;
		}
	}
}
