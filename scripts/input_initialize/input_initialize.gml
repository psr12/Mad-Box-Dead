/// @description input_initialize()
function input_initialize() {
	/**********************************************************
    
	    Run this once at the start of the game. Whichever object that calls this
	    will need to run update_input() each step as well.

	        replaces:   N/A
    
	        example:    input_initialize()
    
	        returns:    N/A

	************************************************************/

	/*
	    Here is where we define the control scheme. You can add more keys by simply adding 3 variables like this:
        
	    global.keyShoot = -1;
	    global.keyJummp = -1;
    
	    global.keyShoot_kb = ord('D'); <- ord('') is what you use for a letter key
	    global.keyJump_kb = vk_space;
    
	    global.keyShoot_gp = gp_face2;
	    global.keyJump_gp = gp_face1;
    
	    ... and so on
    
	    Then make sure you add the variables to the update_scheme() script
	*/

	// Initialize the key values. These are the variables that will be used in the input_ functions
	// example: input_check_pressed(global.keyLeft)
	global.keyLeft = -1;
	global.keyRight = -1;
	global.keyUp = -1;
	global.keyDown = -1;

	    global.keyCharge = -1
	    global.keyDrop =-1
	    global.keyJump = -1
	    global.keyDash =-1
		
	// Values of keyboard keys
	// This is the control scheme for the keyboard
	global.keyLeft_kb = vk_left;
	global.keyRight_kb = vk_right;
	global.keyUp_kb = vk_up;
	global.keyDown_kb = vk_down;

	    global.keyCharge_kb = ord("W")
	    global.keyDrop_kb =  ord("A")
	    global.keyJump_kb =  ord("S")
	    global.keyDash_kb =  ord("D")
		
	// Values of gamepad buttons
	// This is the control scheme for the gamepads
	global.keyLeft_gp = gp_padl;
	global.keyRight_gp = gp_padr;
	global.keyUp_gp = gp_padu;
	global.keyDown_gp = gp_padd;

		global.keyCharge_gp = gp_face4
	    global.keyDrop_gp =  gp_face3
	    global.keyJump_gp =  gp_face1
	    global.keyDash_gp = gp_face2
		
	/*
	    These hold the controller index for each player. PC's start the controller index at 0, 
	    but the OUYA will start it at 1 (I am not sure how other Android devices handle it, so feel free to modify it if need be). 
	    These variables will make it easier to manage multiple controllers across different platforms.
	*/
	if os_type == os_android
	{
	    global.player[1] = 1;
	    global.player[2] = 2;
	    global.player[3] = 3;
	    global.player[4] = 4;
	} else 
	{
	    global.player[1] = 0;
	    global.player[2] = 1;
	    global.player[3] = 2;
	    global.player[4] = 3;
	}

	global.methodOfInput = "KEYBOARD"; // Which method of input we are using, can be either "KEYBOARD" or "GAMEPAD"
	global.activeController = 0; // Which controller slot is the "default" controller when not specified in functions, so probably player 1

	gamepadConnected = false; // Whether a controller is connected or not


	// Setup for the OUYA
	if os_type == os_android
	{
	    global.methodOfInput = "GAMEPAD";
	    global.activeController = global.player[1];
	}


	// Initialize last key and press/release variables for gamepads
	// We initialize 0 to 6 because that is how many controllers we can recognize from OUYA
	for(var i = 0; i < 6; i++)
	{
	    global.lastKey[i] = -1; 
    
	    // These variables are set in input_press/release/hold and then are 
	    // checked for and set back to -1 in their respective input_pressed/release/check scripts
	    global.buttonPress[i] = -1;
	    global.buttonRelease[i] = -1;
	    global.buttonHeld[i] = -1;
	}
    
	// Assign the initial scheme    
	update_scheme();    


}
