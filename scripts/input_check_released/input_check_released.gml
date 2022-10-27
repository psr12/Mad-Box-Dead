/// @description input_check_released(key, [index])
/// @param key
/// @param  [index]
function input_check_released() {
	/**********************************************************

	    Will return true when the input key is released
    
	        replaces:   keyboard_check_released()
    
	        example:    input_check_released(global.keyLeft)
    
	        returns:    true or false

	************************************************************/

	var input = argument[0];
	var controller = global.activeController;

	if argument_count > 1
	    controller = argument[1];

	// This will work for keyboard as well since the controller index will always refer to the keyboard
	// if global.methodOfInput is set to keyboard    
	if global.buttonRelease[controller] == input
	{
	    global.lastKey[controller] = input;
	    global.buttonRelease[controller] = -1
	    return true;
	}       
        
	if global.methodOfInput == "KEYBOARD"
	    return keyboard_check_released(input);
	else if global.methodOfInput == "GAMEPAD"
	    return gamepad_button_check_released(controller, input);


}
