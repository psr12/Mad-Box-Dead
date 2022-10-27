/// @description Insert description here
// You can write your code in this editor



switch state {
	
	case 0:
	case 1:
	case 2:
	
	if keyboard_check_pressed(vk_enter) {
		global.quizarray[state] = keyboard_string;
		keyboard_string = "";
		state++; 
	}
	
	break;
	
	
	case 3: alarm[3] = 200; state++; break;
	case 4: break; //okay, that's all I wanted.
	case 5:  alarm[3] = 180; state++;  
	ini_open("keybindings.ini")

		ini_write_string("quiz", "name", global.quizarray[0])
		ini_write_string("quiz", "food", global.quizarray[1])
		ini_write_string("quiz", "thing", global.quizarray[2])
		
	ini_close()

	break;
	case 6: break;
	case 7: 
		obj_cutscenehandler.onscene++;
		instance_destroy();
	break;
	
}