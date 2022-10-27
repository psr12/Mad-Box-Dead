// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_rewind_save(){
			var fullpath = string(rewind_path) + string(ds_list_size(rewind_path_list)) + ".txt";
			scr_level_save(fullpath)
			ds_list_add(rewind_path_list, fullpath)
			rewind_timer = 0;
			
			if file_exists(fullpath) {file_delete(fullpath) } //delete old file

			save_file = ds_list_create(); //clear list
				with obj_cheese { //all platforms add self to the list
					ds_list_add(other.save_file, [x, y, layer, object_index, image_blend, image_xscale, image_yscale, image_angle] )
				}
				
				
				with obj_onbeat { //all enemies/stuff add self to the list
					if object_index == 0 ds_list_add(other.save_file, [x, y, layer, object_index, image_blend, image_xscale, image_yscale, image_angle] )
					else ds_list_add(other.save_file, [x, y, layer, object_index, image_blend, image_xscale, image_yscale, image_angle] )
				}
				
				
				with obj_MadSquare { //mad rat, for starting position
					ds_list_add(other.save_file, ["MadRat", x, y] )
				}
				
				//save tome and position in notelist, for rewinding
				ds_list_add(save_file, ["tome", obj_recorder.tome])
				ds_list_add(save_file, ["notelist_position", ds_list_size(obj_recorder.notelist) - ds_list_size(obj_recorder.backup)] )
				
			var gibber = ds_list_write(save_file) //convert list to string
			var file = file_text_open_write(fullpath) //open/create file
			file_text_write_string(file, gibber) //write list string to file
			file_text_close(file); //close file
			
			ds_list_destroy(save_file)

}
