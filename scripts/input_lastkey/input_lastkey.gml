/// @description input_lastkey([index])
/// @param [index]
function input_lastkey() {
	/**********************************************************
    
	    This is mainly useful for letting users configure their controls. If you want to
	    display the last key pressed as a string, use the key_value() script with it.

	        replaces:   keyboard_lastkey
    
	        example:    global.keyLeft_kb = input_lastkey()
	                    strLeft = key_value(input_lastkey())
    
	        returns:    value of last key pressed

	************************************************************/
	var controller = global.activeController;

	if argument_count > 0
	    controller = argument[0];
    
	if global.methodOfInput == "KEYBOARD"
	    global.lastKey[0] = keyboard_lastkey;
	else if global.methodOfInput == "GAMEPAD"
	{    
	    var k = gamepad_lastbutton(controller);
	    // We need to store in a global variable so that it stays unchanged when 
	    // nothing is pressed, otherwise it'll keep setting to "INVALID"
    
	    if k != -1 // if a button has been pressed
	        global.lastKey[controller] = k; 
	}

	return global.lastKey[controller];                                                       


}
