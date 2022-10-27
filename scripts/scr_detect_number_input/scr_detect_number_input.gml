// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_detect_number_input(){
					var abba = 0;

		if keyboard_check_pressed( ord("1") ) ||
			keyboard_check_pressed( ord("2") ) ||
			keyboard_check_pressed( ord("3") ) ||
			keyboard_check_pressed( ord("4") ) ||
			keyboard_check_pressed( ord("5") ) ||
			keyboard_check_pressed( ord("6") ) ||
			keyboard_check_pressed( ord("7") ) ||
			keyboard_check_pressed( ord("8") ) ||
			keyboard_check_pressed( ord("9") )
			{
				if keyboard_check_pressed( ord("1") ) abba = 1
				if keyboard_check_pressed( ord("2") ) abba = 2
				if keyboard_check_pressed( ord("3") ) abba = 3
				if keyboard_check_pressed( ord("4") ) abba = 4
				if keyboard_check_pressed( ord("5") ) abba = 5
				if keyboard_check_pressed( ord("6") ) abba = 6
				if keyboard_check_pressed( ord("7") ) abba = 7
				if keyboard_check_pressed( ord("8") ) abba = 8
				if keyboard_check_pressed( ord("9") ) abba = 9

			}
				return abba

}