/// @description Insert description here
// You can write your code in this editor


BPM = keyboard_string

if keyboard_check_pressed(vk_escape) //cancel
{
	instance_destroy()
}

if keyboard_check_pressed(vk_enter) //confirm
{
	//if string_digits(BPM) != BPM {
	//	BPM = string_digits(BPM)
	//}
	//else 
	{
		var passin = abs( real(BPM) )
		passin = clamp(passin, 1, 999) //limit to 1-999
		
	obj_recorder.BPM = passin; //pass in BPM
	instance_destroy()
	}
}
