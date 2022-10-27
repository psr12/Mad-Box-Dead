/// @description  is_mouse_here(x1,y1,x2,y2);
/// @param x1
/// @param y1
/// @param x2
/// @param y2
function is_mouse_here(argument0, argument1, argument2, argument3) {

	// Check if the mouse is over the area in question

	if (device_mouse_x_to_gui(0)>argument0) && (device_mouse_x_to_gui(0)<argument2) 
	&& (device_mouse_y_to_gui(0)>argument1) && (device_mouse_y_to_gui(0)<argument3) {

	    return 1;

	} else {

	    return 0;

	}



}
