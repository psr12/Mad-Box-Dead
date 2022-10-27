/// @description input_check_pressed(key, [index])
/// @param key
/// @param  [index]
function input_check_pressed() {
	/**********************************************************

	    Will return true when the input key is pressed
    
	        replaces:   keyboard_check_pressed()
    
	        example:    input_check_pressed(global.keyLeft)
    
	        returns:    true or false

	************************************************************/

	var input = argument[0];
	var controller = global.activeController;

	if argument_count > 1
	    controller = argument[1];

	// This will work for keyboard as well since the controller index will always refer to the keyboard
	// if global.methodOfInput is set to keyboard        
	if global.buttonPress[controller] == input
	{
	    global.lastKey[controller] = input;
	    global.buttonPress[controller] = -1
	    return true;
	} 
   
	if global.methodOfInput == "KEYBOARD"
	    return keyboard_check_pressed(input);
	else if global.methodOfInput == "GAMEPAD"
	    return gamepad_button_check_pressed(controller, input);


}
