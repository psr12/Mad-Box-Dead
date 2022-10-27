/// @description update_scheme()
function update_scheme() {
	/**********************************************************
    
	    This reassigns the key variables to either keyboard or gamepad.
	    You shouldn't have to worry about calling this script as update_input()
	    takes care of that

	        replaces:   N/A
    
	        example:    update_scheme()
    
	        returns:    N/A

	************************************************************/

	// Be sure to add your new key variables here when you create them! 
	// Otherwise they will not be assigned to a scheme        
	if global.methodOfInput == "KEYBOARD"
	{
	    global.keyLeft = global.keyLeft_kb;
	    global.keyRight = global.keyRight_kb;
	    global.keyUp = global.keyUp_kb;
	    global.keyDown = global.keyDown_kb;
		
	    global.keyCharge = global.keyCharge_kb;
	    global.keyDrop = global.keyDrop_kb;
	    global.keyJump = global.keyJump_kb;
	    global.keyDash = global.keyDash_kb;
		
	} else if global.methodOfInput = "GAMEPAD"
	{
	    global.keyLeft = global.keyLeft_gp;
	    global.keyRight = global.keyRight_gp;
	    global.keyUp = global.keyUp_gp;
	    global.keyDown = global.keyDown_gp;
		
	    global.keyCharge = global.keyCharge_gp;
	    global.keyDrop = global.keyDrop_gp;
	    global.keyJump = global.keyJump_gp;
	    global.keyDash = global.keyDash_gp;
	}


}
