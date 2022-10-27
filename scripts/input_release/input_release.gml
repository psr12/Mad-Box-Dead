/// @description input_release(key, [index])
/// @param key
/// @param  [index]
function input_release() {

	/**********************************************************

	    Will imitate a "release" of the given key
    
	        replaces:   keyboard_key_release()
    
	        example:    input_release(global.keyLeft)
    
	        returns:    N/A

	************************************************************/
	var input = argument[0];
	var controller = global.activeController;

	if argument_count > 1
	    controller = argument[1];
    
	global.buttonRelease[controller] = input    


}
