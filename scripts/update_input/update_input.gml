/// @description update_input()
function update_input() {
	/**********************************************************
    
	    Be sure to run this once every step with the object that called input_initialize(). 
	    This script will search for whether a controller is plugged in or not and also
	    update lastkey variables.

	        replaces:   N/A
    
	        example:    update_input()
    
	        returns:    N/A

	************************************************************/

	//Handle input for PC
	if os_type != os_android
	{           
	    // We're only concerned about switching to the keyboard if the 1st player gamepad isn't connected.
    
	    // If the gamepad was disconnected
	    if !gamepad_is_connected(global.player[1]) && global.methodOfInput == "GAMEPAD"
	    {
	        global.methodOfInput = "KEYBOARD";      
	        gamepadConnected = false;
	        update_scheme();
	    // If the gamepad was connected
	    } else if (gamepad_is_connected(global.player[1])) && gamepadConnected = false && global.methodOfInput == "KEYBOARD"
	    {
	        global.methodOfInput = "GAMEPAD";      
	        gamepadConnected = true;
	        update_scheme();
	    }     
	}

	// There won't be a keyboard scheme for OUYA so there's no need to check for it

	// Updates the last key/button pressed
	for(var i = 0; i < 6; i++)
	    if gamepad_is_connected(i) {input_lastkey(i)};    


}
