// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function unlerp(low, high, value){

	return ( (value-low) / (high-low) )
	//returns a 0-1 value from a middle value
}