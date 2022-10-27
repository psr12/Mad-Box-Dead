/// @description on beat
// Inherit the parent event
event_inherited();

var spot = []
var blumber = instance_number(obj_blank)
for (var i = 0; i < blumber; i++)
{
	var inst = instance_find(obj_blank, i)
	spot[i] = [inst.x, inst.y]
}

beat++;

switch beat { //oh boy
	
case 0:

case 17: //
		var baby = instance_create(spot[0][0], spot[0][1], obj_sewerratsword);
		baby.facing = 1; 
	break;
case 21: //
		var baby = instance_create(spot[10][0], spot[10][1], obj_sewerratsword);
		baby.facing = -1; 
	break;

case 25: obj_light.image_blend = c_red; 
obj_light.image_alpha = 0.1; 
	with obj_cameraman {shake = 5}

	break;

case 30: scr_killmob(0); break;
case 35: scr_killmob(1); break;


case 41: //
		var baby = instance_create(spot[9][0], spot[9][1], obj_sewerrat);
		baby.facing = -1; 
		var baby = instance_create(spot[1][0], spot[1][1], obj_sewerrat);
	break;


case 49: //
		var baby = instance_create(spot[10][0], spot[10][1], obj_sewerrat);
		baby.facing = -1; 
		var baby = instance_create(spot[0][0], spot[0][1], obj_sewerrat);
		
		scr_killmob(1);
	break;
case 51: //
		var baby = instance_create(spot[8][0], spot[8][1], obj_sewerratjump);
		baby.facing = -1; 
		var baby = instance_create(spot[2][0], spot[2][1], obj_sewerratjump);
	break;

case 54: scr_killmob(0); 
	break;

case 62: scr_killmob(3); scr_killmob(2); 
	break;

case 65:
		var baby = instance_create(spot[10][0], spot[10][1], obj_sewerratjump);
		baby.facing = -1; 
	break;
case 68:
		var baby = instance_create(spot[7][0], spot[7][1], obj_sewerratjump);
				baby.facing = -1; 
	break;
	
case 70: 	var baby = instance_create(spot[5][0], spot[5][1], obj_sewerratjump);
	var baby = instance_create(spot[5][0], spot[5][1], obj_sewerratjump);
				baby.facing = -1; 
	break;
	
case 74: scr_killmob(0); scr_killmob(1); 
	break;
	
case 75: 	var baby = instance_create(spot[1][0], spot[1][1], obj_sewerrat);
	var baby = instance_create(spot[10][0], spot[10][1], obj_sewerratsword);
				baby.facing = -1; 
	break;

case 78: scr_killmob(0);
	break;


case 82: scr_killmob(0); 
	break;

case 88: scr_killmob(0); scr_killmob(2); //kill remainder, spawn idles on sides
	var baby = instance_create(spot[10][0], spot[10][1], obj_sewerratidle);
				baby.facing = -1; 
	var baby = instance_create(spot[0][0], spot[0][1], obj_sewerratidle);
	break;

case 89: 
	 obj_light.image_blend = c_white; 
	obj_light.image_alpha = 0; 
	break;

case 105: //kill 2 on sides
	with obj_cameraman {shake = 5}

	scr_lasermob(0, 8); scr_lasermob(1, 8);
	with obj_sewerlaser {image_xscale = 4;}
	break;

case 108: //spawn 2 on ledges
	var baby = instance_create(spot[2][0], spot[2][1], obj_sewerratidle);
	var baby = instance_create(spot[8][0], spot[8][1], obj_sewerratidle);
					baby.facing = -1; 
	break;
	
case 113: //kill the 2 on ledges
	with obj_cameraman {shake = 5}

	scr_lasermob(0, 6); scr_lasermob(1, 6);
	with obj_sewerlaser {image_xscale = 4;}
	break;

case 117: //spawn 3 in middle
	var baby = instance_create(spot[4][0], spot[4][1], obj_sewerratidle);
	break;
case 118: 
	var baby = instance_create(spot[5][0], spot[5][1], obj_sewerratidle);
	break;
case 119: 
	var baby = instance_create(spot[6][0], spot[6][1], obj_sewerratidle);
	break;

case 122: //Kill the 3 in middle
	with obj_cameraman {shake = 15}

scr_lasermob(1, 8);	
	with obj_sewerlaser {image_xscale = 10;}
	break;

case 137: //X LASERS
	scr_makelaser(spot[2][0], 500, 6, 45, 1, 3)
	scr_makelaser(spot[2][0], 900, 6, -45, 1, 3)
	break;
case 138: //lasers
	scr_makelaser(spot[6][0], 500, 5, 45, 1, 2)
	scr_makelaser(spot[6][0], 900, 5, -45, 1, 2)
	break;
	

case 143: //3 left
	scr_makelaser(spot[0][0], 500, 5, 0, 5, 2)
	break;
case 144: //lasers
	scr_makelaser(spot[1][0], 500, 5, 0, 5, 2)
	break;
case 145: //lasers
	scr_makelaser(spot[2][0], 500, 5, 0, 5, 2)
	break;
	
	
case 146: //3 RIGHT
	scr_makelaser(spot[10][0], 500, 5, 0, 5, 2)
	break;
case 147: //lasers
	scr_makelaser(spot[9][0], 500, 5, 0, 5, 2)
	break;
case 148: //lasers
	scr_makelaser(spot[8][0], 500, 5, 0, 5, 2)
	break;
	
	
case 152: //huge wind up in middle
	scr_makelaser(spot[5][0], 500, 1, 0, 1, 4)
	break;
case 153: //lasers
	scr_makelaser(spot[5][0], 500, 1, 0, 6, 4)
	break;
case 154: //lasers
	scr_makelaser(spot[5][0], 500, 1, 0, 12, 4)
	break;
case 155: //lasers
	scr_makelaser(spot[5][0], 500, 1, 0, 24, 4)
	break;
case 156: //lasers
	scr_makelaser(spot[5][0], 500, 4, 0, 45, 3)
	break;
case 159:
		with obj_cameraman {shake = 55}
	break;

case 160: //FINAL LASERS
	scr_makelaser(spot[0][0], 500, 1, 45, 1, 3)
	//scr_makelaser(spot[1][0], 500, 1, 45, 1, 3)
	scr_makelaser(spot[2][0], 500, 1, 45, 1, 3)
	//scr_makelaser(spot[3][0], 500, 1, 45, 1, 3)
	scr_makelaser(spot[4][0], 500, 1, 45, 1, 3)
	//scr_makelaser(spot[5][0], 500, 1, 45, 1, 3)
	scr_makelaser(spot[6][0], 500, 1, 45, 1, 3)
	//scr_makelaser(spot[7][0], 500, 1, 45, 1, 3)
	scr_makelaser(spot[8][0], 500, 1, 45, 1, 3)
	//scr_makelaser(spot[9][0], 500, 1, 45, 1, 3)
	scr_makelaser(spot[10][0], 500, 1, 45, 1, 3)
	break;
case 162: //lasers
	//scr_makelaser(spot[0][0], 500, 1, -45, 1, 3)
	scr_makelaser(spot[1][0], 500, 1, -45, 1, 3)
	//scr_makelaser(spot[2][0], 500, 1, -45, 1, 3)
	scr_makelaser(spot[3][0], 500, 1, -45, 1, 3)
	//scr_makelaser(spot[4][0], 500, 1, -45, 1, 3)
	scr_makelaser(spot[5][0], 500, 1, -45, 1, 3)
	//scr_makelaser(spot[6][0], 500, 1, -45, 1, 3)
	scr_makelaser(spot[7][0], 500, 1, -45, 1, 3)
	//scr_makelaser(spot[8][0], 500, 1, -45, 1, 3)
	scr_makelaser(spot[9][0], 500, 1, -45, 1, 3)
	//scr_makelaser(spot[10][0], 500, 1, -45, 1, 3)
	break;
	

case 165:
	scr_makelaser(spot[0][0], 500, 4, 45, 1, 0)
	//scr_makelaser(spot[1][0], 500, 4, 45, 1, 0)
	scr_makelaser(spot[2][0], 500, 4, 45, 1, 0)
	//scr_makelaser(spot[3][0], 500, 4, 45, 1, 0)
	scr_makelaser(spot[4][0], 500, 4, 45, 1, 0)
	//scr_makelaser(spot[5][0], 500, 4, 45, 1, 0)
	scr_makelaser(spot[6][0], 500, 4, 45, 1, 0)
	//scr_makelaser(spot[7][0], 500, 4, 45, 1, 0)
	scr_makelaser(spot[8][0], 500, 4, 45, 1, 0)
	//scr_makelaser(spot[9][0], 500, 4, 45, 1, 0)
	scr_makelaser(spot[10][0], 500, 4, 45, 1, 0)

	//scr_makelaser(spot[0][0], 500, 4, -45, 1, 0)
	scr_makelaser(spot[1][0], 500, 4, -45, 1, 0)
	//scr_makelaser(spot[2][0], 500, 4, -45, 1, 0)
	scr_makelaser(spot[3][0], 500, 4, -45, 1, 0)
	//scr_makelaser(spot[4][0], 500, 4, -45, 1, 0)
	scr_makelaser(spot[5][0], 500, 4, -45, 1, 0)
	//scr_makelaser(spot[6][0], 500, 4, -45, 1, 0)
	scr_makelaser(spot[7][0], 500, 4, -45, 1, 0)
	//scr_makelaser(spot[8][0], 500, 4, -45, 1, 0)
	scr_makelaser(spot[9][0], 500, 4, -45, 1, 0)
	//scr_makelaser(spot[10][0], 500, 4, -45, 1, 0)
		with obj_cameraman {shake = 25}
break;
	
	
case 170: //barrel
	instance_create(spot[5][0], room_height, obj_sewerbarrel)
	break;

case 180: //hit sides
	scr_makelaser(spot[10][0], 500, 8, 0, 1, 4)
	scr_makelaser(spot[0][0], 500, 8, 0, 1, 4)
	with obj_sewerlaser {image_xscale = 4;}
			with obj_cameraman {shake = 5}
	break;

case 186: 
	obj_sewerbarrel.getup = true;
	break;

case 198: 
	instance_create(spot[3][0]+20, spot[3][1]-500, obj_sewerbarreljust)
	instance_create(spot[7][0], spot[7][1]-500, obj_sewerbarreljust)
break;


case 205: 
	var baby = instance_create(spot[3][0], spot[3][1], obj_mobratjump);
	baby.countdown = 5;
break;

case 220: 
	var baby = instance_create(spot[7][0], spot[7][1], obj_mobratjump);
		baby.countdown = 3;
		baby.facing = -1; 
break;

case 240: 
	var baby = instance_create(spot[3][0], spot[3][1], obj_sewerratidle);
break;
case 245: 
	instance_create(obj_sewerratidle.x, obj_sewerratidle.y-1000, obj_sewerdebris)
break;

case 260: 
	var baby = instance_create(spot[5][0], spot[5][1], obj_mobratjump);
	var baby = instance_create(spot[7][0], spot[7][1], obj_mobratjump);
	baby.facing = -1; 
break;

case 275: obj_sewerbarrel.stoptoxic = true; break;

case 280: 
	obj_sewerbarrel.sunk = true;
	obj_sewerbarreljust.state = 2;
	break;


case 310: //monster rises
	obj_light.image_blend = c_white
	obj_light.sprite_index = spr_darkness
	obj_sewerbarrel.fuckthis = true;
	obj_addwater.on = true;
	break;
	
case 314: 
	with obj_sewerbarrel { event_user(4) } break;
case 315: 
	with instance_find(obj_sewerbarreljust,0) { event_user(4) } break;
case 316: 
	with instance_find(obj_sewerbarreljust,0){ event_user(4) } //destroy barrels and floor of pipe
	do { instance_destroy(collision_line(400, 1400, 1500, 1400, obj_cheese, false, false))  }
	until ( !collision_line(400, 1400, 1500, 1400, obj_cheese, false, false) )
	break;
	
	
}


