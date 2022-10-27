/// @description input_press(key, [index])
/// @param key
/// @param  [index]
function input_press() {

	/**********************************************************

	    Will imitate a "press" of the given key
    
	        replaces:   keyboard_key_press()
    
	        example:    input_press(global.keyLeft)
    
	        returns:    N/A

	************************************************************/
	var input = argument[0];
	var controller = global.activeController;

	if argument_count > 1
	    controller = argument[1];
    
	global.buttonPress[controller] = input    


}
