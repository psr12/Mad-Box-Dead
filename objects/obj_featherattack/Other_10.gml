/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();



switch state {
	
	case 0: 
			
			repeat(3){
				var baby = instance_create(x+800,y+ 100*feather, obj_feather)
				baby.dir = 200 + 20*feather +rando ;
				feather++;
			}
			state = 1;
			//feather = 1;
			break;
		
	case 1:
		//feather--;
		//if feather <=0 
		{state = 014; feather = 0;}
	break;
		
	case 14:
	
			repeat(3){
				var baby = instance_create(x-800,y+ 100*feather, obj_feather)
				baby.dir = 340 - 20*feather + rando;
				feather++;
			}
			state = 77;
		break;
		
	case 77:
	
	feather--;
	if feather <=0 {obj_birdboss2.state = 0;
		instance_destroy();
	}
	break;
	
	
}