/// @description input_anykey([index])
/// @param [index]
function input_anykey() {
	/**********************************************************
    
	    Returns true when any button or key is pressed

	        replaces:   vk_anykey
    
	        example:    input_anykey()
    
	        returns:    true or false

	************************************************************/
	var controller = global.activeController;

	if argument_count > 0
	    controller = argument[0];
    
	if global.methodOfInput == "KEYBOARD" && keyboard_check_pressed(vk_anykey)
	    return true;
	else if global.methodOfInput == "GAMEPAD"
	{
	    if gamepad_button_check(controller,gp_face1)
	    || gamepad_button_check(controller,gp_face2)
	    || gamepad_button_check(controller,gp_face3)
	    || gamepad_button_check(controller,gp_face4)
	    || gamepad_button_check(controller,gp_shoulderl)
	    || gamepad_button_check(controller,gp_shoulderr)
	    || gamepad_button_check(controller,gp_shoulderrb)
	    || gamepad_button_check(controller,gp_shoulderlb)
	    || gamepad_button_check(controller,gp_select)
	    || gamepad_button_check(controller,gp_start)
	    || gamepad_button_check(controller,gp_stickl)
	    || gamepad_button_check(controller,gp_stickr)
	    || gamepad_button_check(controller,gp_padu)
	    || gamepad_button_check(controller,gp_padd)
	    || gamepad_button_check(controller,gp_padl)
	    || gamepad_button_check(controller,gp_padr)
	        return true;                                                              
	}


}
