/// @description input_hold(key, [index])
/// @param key
/// @param  [index]
function input_hold() {

	/**********************************************************

	    Will imitate a "held" position of the given key
    
	    This is the same as input_press and input_release, except this triggers
	    input_check() to be true
    
	        replaces:   N/A
    
	        example:    input_hold(global.keyLeft)
    
	        returns:    N/A

	************************************************************/
	var input = argument[0];
	var controller = global.activeController;

	if argument_count > 1
	    controller = argument[1];
    
	global.buttonHeld[controller] = input    


}
