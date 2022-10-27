// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_rewind_load(filepath){
			
if file_exists(filepath)
{
	instance_destroy(obj_cheese);
	instance_destroy(obj_onbeat);
	var file = file_text_open_read(filepath)//open file
	var gibber = file_text_read_string(file)//get string from file
	save_file = ds_list_create() //make list
	ds_list_read(save_file, gibber) //convert string into list
	file_text_close(file); //close file
	var size = ds_list_size(save_file) //get list length
	for (var f = 0; f < size; f++) //for each entry in the list...
	{
		var ar = save_file[| f] //get array
		if ar[0] == "MadRat" {obj_MadSquare.x = ar[1]; obj_MadSquare.y = ar[2]; continue;} //if MR, just move
		if ar[0] == "background" {continue;} //if bg, set bg. LEGACY SUPPORT?
		if ar[0] == "tome" { //set TOME of whomever it may convern
				//if instance_exists(obj_onbeat) obj_onbeat.time = ar[1]
				//if instance_exists(obj_MadSquare) obj_MadSquare.time = ar[1]
				continue;
		}
		if ar[0] == "notelist_position" {
				ds_list_copy(obj_recorder.notelist, obj_recorder.backup) //get fresh copy of backup
				repeat(ar[1] ) {ds_list_delete(obj_recorder.notelist, 0)} //delete until at point
				audio_sound_set_track_position(obj_recorder.songinst, ar[1]/obj_recorder.gamespeed)
				continue;
		}
		
		if ar[0] == "background" {continue;} //if bg, set bg. LEGACY SUPPORT?
		if ar[0] == "f2values" { //grab scroll/scale/alpha values
			global.nearscale = ar[1]
			global.nearscroll = ar[2]
			global.middlescale = ar[3]
			global.middlescroll = ar[4]
			global.farscale = ar[5]
			global.farscroll = ar[6]
			global.ontopscale = ar[7]
			global.ontopscroll = ar[8]
			global.platformalpha = ar[9]
			global.onewayalpha = ar[10]
			global.slidealpha = ar[11]
			continue;} //if bg, set bg
		var newb = instance_create_layer(ar[0], ar[1], ar[2], ar[3]) //else recreate instance
		if ar[4] != c_white {newb.sprite_index = spr_squarewhite} //change platforms to be white, but not default ones
		if newb newb.image_blend = ar[4]; // pass in platform color
		if newb newb.image_xscale = ar[5]; // pass in xscale
		if newb newb.image_yscale = ar[6]; // pass in yscale
		if newb newb.image_angle = ar[7]; // pass in rotation
	}
	
	ds_list_destroy(save_file)
}

}