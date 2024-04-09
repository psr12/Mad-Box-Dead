/// @description Insert description here
// You can write your code in this editor




if state == 0 { 
	curval += 1;
	fx_set_parameter(fxlayer, "g_CellSize", curval) 
	if curval >= 64 {state++}
}

if state == 1 { 
	curval = Approach(curval, 1, 2)
	fx_set_parameter(fxlayer, "g_CellSize", curval) 
	if curval <= 1 {state++}
}

if state == 2 instance_destroy();

