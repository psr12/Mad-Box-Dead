/// @description on beat
// You can write your code in this editor

// Inherit the parent event
event_inherited();

switch state {
	
	
	case 9:
		state = phase + 10;
		beat = -1;
		break;
	
	case 10: //three, rightside going left

				switch beat {
	
					case 0:
						var baby = instance_create(x,y, obj_mobrat1);
						baby.facing = -1;play_sound(snd_falling,1)
					break;
						
					case 1: 
						var baby = instance_create(x+200,y, obj_mobrat1);
						baby.facing = -1; play_sound(snd_falling,1)
					break;
						
					case 2: 
						var baby = instance_create(x+400,y, obj_mobrat1);
						baby.facing = -1; play_sound(snd_falling,1)
						state=74;
					break;
					}
	break;
	
	case 11: //two, one on each side

				switch beat {
	
					case 0:
						var baby = instance_create(x+500,y, obj_mobrat1);
						baby.facing = -1; play_sound(snd_falling,1)
						var baby = instance_create(x-500,y, obj_mobrat1);
						state=74;
					break;
					}
	break;

	case 12: //three, rightside going left

				switch beat {
	
					case 0:
						var baby = instance_create(x,y, obj_mobratjump);
						baby.facing = -1;

						var baby = instance_create(x+200,y, obj_mobratjump);
						baby.facing = -1;

						var baby = instance_create(x+400,y, obj_mobratjump);
						baby.facing = -1; play_sound(snd_falling,1)
						state=74;
					break;
					}
	break;
	
	case 13: //four, middle going out

				switch beat {

					case 0:
					
						var baby = instance_create(x-50,y, obj_mobratsword);
						baby.facing = -1; 
						var baby = instance_create(x+50,y, obj_mobratsword);

						play_sound(snd_falling,1)
					break;
					
					case 1:
						var baby = instance_create(x-200,y, obj_mobratjump);
						baby.facing = -1;

						var baby = instance_create(x+200,y, obj_mobratjump);
						
						play_sound(snd_falling,1)
						state=74;
					break;
					
					}
	break;
	
	case 14: // four, water fountain pattern

				switch beat {
	
					case 0:
						var baby = instance_create(x-440,y, obj_mobratjump);

						var baby = instance_create(x+440,y, obj_mobratjump);
						baby.facing = -1;
						play_sound(snd_falling,1)
					break;
					case 1:
						var baby = instance_create(x+40,y, obj_mobratjump);

						var baby = instance_create(x-40,y, obj_mobratjump);
						baby.facing = -1;
						play_sound(snd_falling,1)
						state = 74;
					break;
					

					}
	break;
	
	case 15: //four, swords going in, jumps going out

				switch beat {
					case 0:
					
						var baby = instance_create(x-40,y, obj_mobratsword);
						baby.facing = -1; 
						var baby = instance_create(x+40,y, obj_mobratsword);

						play_sound(snd_falling,1)
					break;
					
					case 1:
						var baby = instance_create(x+500,y, obj_mobratjump);
						baby.facing = -1;

						var baby = instance_create(x-500,y, obj_mobratjump);
						
						play_sound(snd_falling,1)
						state = 74;
					break;
					

					}
	break;
	case 16: //three, one of each
//ratsleft = 23;
				switch beat {
	
					case 0:
						var baby = instance_create(x,y, obj_mobrat1);
						baby.facing = -1;play_sound(snd_falling,1)
					break;
						
					case 1: 
						var baby = instance_create(x+200,y, obj_mobratjump);
						baby.facing = -1; play_sound(snd_falling,1)
					break;
						
					case 2: 
						var baby = instance_create(x+400,y, obj_mobratsword);
						baby.facing = -1; play_sound(snd_falling,1)
						state=74;
					break;
					}
	break;
	case 17: //
//ratsleft = 23+4;
				switch beat {
	
					case 0:
						var baby = instance_create(x-400,y, obj_mobrat1);
						var baby = instance_create(x-200,y, obj_mobrat1);
						play_sound(snd_falling,1)
					break;
						
					case 2: 
						var baby = instance_create(x,y, obj_mobratjump);
							baby.facing = -1;
						var baby = instance_create(x+200,y, obj_mobratjump);
							baby.facing = -1; 
						play_sound(snd_falling,1)
						state=74;
					break;
						
					}
	break;
	
	case 74: //wait for mad rat to kill the active rats
		if !instance_exists(obj_canhit) and !instance_exists(obj_canthit)
		{
			phase++; state = 9;
			if showratnum <=0 {
				with obj_recorder {event_user(8)}
				play_sound(snd_mobratfinaldie, 1);
			}
		}
		break;
}


beat++; 

