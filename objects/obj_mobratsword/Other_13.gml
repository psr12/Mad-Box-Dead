/// @description 'step'
// You can write your code in this editor

// Inherit the parent event

switch state {

case 0:
	if place_meeting(x,y+1, obj_cheese) {state = 1; 
		scr_changeseq(sq_mb_swordidle, scale)
		}
	break;

case 1:
	if !countdown
	{
		state++;
		scr_changeseq(sq_mb_swordstart, scale)
	}
break;

case 2:
	if countdown == -3 {state++;  
		scr_changeseq(sq_mb_sword, scale)
		}
break;

case 3:
	hsp = (600/30)*facing; state++;
break;

case 4:
	var chip = random(1) -1
	part_type_orientation(global.woodchip_part, 0, 359, chip, 0, false)
	part_particles_create(global.partsys, x-100*facing, y+50, global.woodchip_part, 1)

	if countdown == -5 {
		hsp = 0; state++;
		var baby = instance_create(x,y,obj_mobratvuln)
		baby.facing = facing; 
		baby.type = object_index; 
		instance_destroy()
		//scr_changeseq(sq_mb_idle, scale)
	}
	break;
	

}


event_inherited()




