// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_level_load(filepath){
			
			
if file_exists(filepath)
{
	instance_destroy(obj_cheese);
	instance_destroy(obj_onbeat);
	instance_destroy(obj_assetlayer);
	instance_destroy(obj_wind);
	//instance_destroy(obj_cheese);
	var file = file_text_open_read(filepath)//open files
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
			global.farsprite = ar[12] //which sprite in the bg folder to use
			global.middlesprite = ar[13]
			global.nearsprite = ar[14]
			global.ontopsprite = ar[15]
			continue;} //if bg, set bg
			
			//anything else is an object 
		var stringtoindex = asset_get_index(ar[3])
		var newb = instance_create_layer(ar[0], ar[1], ar[2], stringtoindex) //else recreate instance
		if (stringtoindex == obj_cheese) or (stringtoindex == obj_dropplatform){
			//if variable_instance_exists(newb, sprite_index) 
				newb.sprite_index = spr_squarewhite
				newb.newsprite = spr_squarewhite
			
			} //change platforms to be white, but not default ones
			
		if stringtoindex == obj_assetlayer {newb.sprite_index = ar[8]
			newb.layer = ar[2] } //change placed asset sprites to their ... sprites...
		if newb newb.image_blend = ar[4]; // pass in platform color
		if newb newb.image_xscale = ar[5]; // pass in xscale
		if newb newb.image_yscale = ar[6]; // pass in yscale
		if newb newb.image_angle = ar[7]; // pass in rotation
		if ar[3] == "obj_cheese" and array_length(ar) > 8 {newb.newsprite = ar[8];	} //for painted cheese
		if ar[3] == "obj_trigger" {newb.paired = ar[8];	} //just for triggers, pass in paired obj
		if ar[3] == "obj_camerazoom_trigger" and array_length(ar) > 9 {newb.zoom = ar[9]; newb.zoomount = ar[10];	} //zoom trigger, pass in values
		if ar[3] == "obj_speed_trigger" and array_length(ar) > 9 {newb.spd = ar[9];} //speed trigger, pass in speed
		if ar[3] == "obj_wind" and array_length(ar) > 8 {newb.spd = ar[8];} //
		if ar[3] == "obj_slideplatform" and array_length(ar) > 8 {newb.spd = ar[8];} //
		if ar[3] == "obj_movingplatform" and array_length(ar) > 8 {newb.target = ar[8]; 
			if array_length(ar) > 9 newb.topspeed = ar[9]; 
			newb.state = 2;} //state2 = cannot change target
		if ar[3] == "obj_splatspawner" and array_length(ar) > 8 {newb.maxcooldown = ar[8];} //how frequently to spawn splats
		if ar[3] == "obj_cactus" and array_length(ar) > 8 {newb.topcooldown = ar[8];} //how frequently to step
		if ar[3] == "obj_chaser" and array_length(ar) > 8 {newb.deadin = ar[8];} //how many beats it lasts

	}
	var cheese_layer = layer_get_id("cheese")
	var enemy_layer = layer_get_id("enemies")
	with obj_cheese {layer = cheese_layer}
	with obj_onbeat {layer = enemy_layer}
	
	ds_list_destroy(save_file)
}

}