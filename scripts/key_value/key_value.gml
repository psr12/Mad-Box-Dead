/// @description key_value(key)
/// @param key
function key_value(argument0) {
	/**********************************************************
    
	    This will return a string for the given key code. Not all key codes are here, but most are.

	        replaces:   N/A
    
	        example:    strLeft = key_value(global.keyLeft)
    
	        returns:    string

	************************************************************/
	var vk = argument0;

	if global.methodOfInput == "KEYBOARD"
	{
	    if (vk>=48 && vk<=57) || (vk>=65 && vk<=90) return chr(vk);
	    switch(vk) 
	    {
	      case vk_left: return  "LEFT";
	      case vk_right: return "RIGHT";
	      case vk_up: return    "UP";
	      case vk_down: return  "DOWN";  
	      case vk_enter: return "Enter";
	      case vk_lshift: return "Left Shift";
	      case vk_rshift: return "Right Shift";  
	      case vk_lalt: return "Left alt";
	      case vk_ralt: return "Right alt";
	      case vk_lcontrol: return "Left Control";
	      case vk_rcontrol: return "Right Control";
	      case vk_backspace: return "Backspace";
	      case vk_decimal: return "Decimal";
	      case vk_delete: return "Delete";
	      case vk_add: return "Add";
	      case vk_divide: return "Divide";
	      case vk_end: return "End";
	      case vk_home: return "Home";
	      case vk_insert: return "Insert";
	      case vk_multiply: return "Multiply";
	      case vk_numpad0: return "Numpad 0";  
	      case vk_numpad1: return "Numpad 1"; 
	      case vk_numpad2: return "Numpad 2"; 
	      case vk_numpad3: return "Numpad 3"; 
	      case vk_numpad4: return "Numpad 4"; 
	      case vk_numpad5: return "Numpad 5"; 
	      case vk_numpad6: return "Numpad 6"; 
	      case vk_numpad7: return "Numpad 7"; 
	      case vk_numpad8: return "Numpad 8"; 
	      case vk_numpad9: return "Numpad 9"; 
	      case vk_pagedown: return "Page Down";  
	      case vk_pageup: return "Page Up";
	      case vk_pause: return "Pause";
	      case vk_space: return "Space Bar";
	      case vk_subtract: return "Subtract";
	      case vk_tab: return "Tab"; 
	      case 186: return ";"; 
	      case 188: return "."; 
	      case 190: return ",";
	      case 191: return "/";
	      case 192: return "Tilde";
	      case 219: return "[";
	      case 220: return "\\";
	      case 221: return "]";
	      case 222: return "'";
                
	      default: return "INVALID"; 
	    }                
	} else if global.methodOfInput == "GAMEPAD"
	{
	    switch(vk)
	    {
	        case gp_face1: return "Button 1";
	        case gp_face2: return "Button 2";
	        case gp_face3: return "Button 3";
	        case gp_face4: return "Button 4";
	        case gp_shoulderl: return "L1";
	        case gp_shoulderr: return "R1";
	        case gp_shoulderlb: return "L2";
	        case gp_shoulderrb: return "R2";
	        case gp_start: return "Start";
	        case gp_select: return "Select";
	        case gp_stickl: return "Button 5";
	        case gp_stickr: return "Button 6";
	        case gp_padu: return "Up";
	        case gp_padd: return "Down";
	        case gp_padl: return "Left";
	        case gp_padr: return "Right";    
        
	        default: return "INVALID";                                                                                   
	    }
	}


}
