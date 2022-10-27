// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_holdtoscroll(){
		var cb = 1;
		var waitfor = hold_to_scroll_timer_cooldown
		if keyboard_check(vk_shift) {waitfor = 5; }
		
		var udchange = (keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up)) * cb;
		//return if you press, like normal
		
		if keyboard_check(vk_down)||keyboard_check(vk_up) { //if holding
			hold_to_scroll_timer--; //reduce timer
		}
		else //if not holding
		{hold_to_scroll_timer = hold_to_scroll_timer_max} //reset timer
		
		if hold_to_scroll_timer <=0 { //if timer is out
			udchange = (keyboard_check(vk_down) - keyboard_check(vk_up)) *cb ; //return like you pressed
			hold_to_scroll_timer = waitfor; //set timer to smaller number
		}
		
		return udchange;
}