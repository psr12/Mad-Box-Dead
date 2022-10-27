/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();



switch state {
	
	case 0: 
			
			if box == 1 {instance_create(x,y, obj_warningbox)
				instance_create(x+800,y, obj_warningbox)
			}
			if box == 2 {
				instance_create(x+400,y, obj_headbox)
			}
			box++;
			if box >= 5 state++
			break;
		
	case 1:
	
	box--;
	if box <=0 {obj_birdboss2.state = 0;
		instance_destroy();
	}
	break;
	
	
}