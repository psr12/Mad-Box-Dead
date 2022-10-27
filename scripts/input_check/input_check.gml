/// @description input_check(key, [index])
/// @param key
/// @param  [index]
function input_check() {

	/**********************************************************

	    Will return true when the input key is held down.
    
	    [index] is optional and will allow you to specify which controller you want to use with the global.player[] variables.
	    If not specified we will use the 1st controller (in variable global.activeController)
    
	        replaces:   keyboard_check()
    
	        example:    input_check(global.keyLeft)
    
	        returns:    true or false

	************************************************************/
	var input = argument[0];
	var controller = global.activeController;

	if argument_count > 1
	    controller = argument[1];

	// This will work for keyboard as well since the controller index will always refer to the keyboard
	// if global.methodOfInput is set to keyboard
	if global.buttonHeld[controller] == input
	{
	    global.lastKey[controller] = input;
	    global.buttonHeld[controller] = -1
	    return true;
	}     
        
	if global.methodOfInput == "KEYBOARD"
	    return keyboard_check(input);
	else if global.methodOfInput == "GAMEPAD"
	    return gamepad_button_check(controller, input);    


}
