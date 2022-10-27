/// @description gamepad_lastbutton([index])
/// @param [index]
function gamepad_lastbutton() {
	/**********************************************************
    
	    This is the gamepad equivalent to keyboard_lastkey. This is used 
	    in the input_lastkey script.

	        replaces:   N/A
    
	        example:    gamepad_lastbutton
    
	        returns:    value of the last button pressed

	************************************************************/
	var controller = global.activeController;

	if argument_count > 0
	    controller = argument[0];
    
	if gamepad_button_check_pressed(controller,gp_face1)
	    return gp_face1;
	else if gamepad_button_check_pressed(controller,gp_face2)
	    return gp_face2;
	else if gamepad_button_check_pressed(controller,gp_face3)
	    return gp_face3;
	else if gamepad_button_check_pressed(controller,gp_face4)
	    return gp_face4;
	else if gamepad_button_check_pressed(controller,gp_shoulderl)
	    return gp_shoulderl;
	else if gamepad_button_check_pressed(controller,gp_shoulderr)
	    return gp_shoulderr;
	else if gamepad_button_check_pressed(controller,gp_shoulderrb)
	    return gp_shoulderrb;
	else if gamepad_button_check_pressed(controller,gp_shoulderlb)
	    return gp_shoulderlb;
	else if gamepad_button_check_pressed(controller,gp_select)
	    return gp_select;
	else if gamepad_button_check_pressed(controller,gp_start)
	    return gp_start;
	else if gamepad_button_check_pressed(controller,gp_stickl)
	    return gp_stickl;
	else if gamepad_button_check_pressed(controller,gp_stickr)
	    return gp_stickr;
	else if gamepad_button_check_pressed(controller,gp_padu)
	    return gp_padu;   
	else if gamepad_button_check_pressed(controller,gp_padd)
	    return gp_padd; 
	else if gamepad_button_check_pressed(controller,gp_padl)
	    return gp_padl; 
	else if gamepad_button_check_pressed(controller,gp_padr)
	    return gp_padr;  
	else 
	    return -1; // We return -1 if no button has been pressed


}
