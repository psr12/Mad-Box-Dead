// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_level_save(filepath){
			
			if file_exists(filepath) {file_delete(filepath) } //delete old file

			save_file = ds_list_create(); //clear list
				with obj_cheese { //all platforms add self to the list
					var name = object_get_name(object_index)
					if name = "obj_slideplatform" ds_list_add(other.save_file, [x, y, layer, name, image_blend, image_xscale, image_yscale, image_angle, spd] )
					else ds_list_add(other.save_file, [x, y, layer, name, image_blend, image_xscale, image_yscale, image_angle] )
				}
				with obj_onbeat { //all enemies/stuff add self to the list
					var name = object_get_name(object_index)
					if name == "obj_wind" ds_list_add(other.save_file, [x, y, layer, name, image_blend, image_xscale, image_yscale, image_angle, spd] )
					else ds_list_add(other.save_file, [x, y, layer, name, image_blend, image_xscale, image_yscale, image_angle] )
				}
				with obj_MadSquare { //mad rat, for starting position
					ds_list_add(other.save_file, ["MadRat", x, y] )
				}
				with obj_trigger{
					var name = object_get_name(object_index)
					ds_list_add(other.save_file, [x, y, layer, name, image_blend, image_xscale, image_yscale, image_angle, paired] )
				}
				with obj_assetlayer{
					var name = object_get_name(object_index)
					ds_list_add(other.save_file, [x, y, layer, name, image_blend, image_xscale, image_yscale, image_angle, sprite_index] )
				}
				with obj_camerazoom_trigger{
					var name = object_get_name(object_index)
					ds_list_add(other.save_file, [x, y, layer, name, image_blend, image_xscale, image_yscale, image_angle, sprite_index, zoom, zoomount] )
				}
				
				//special list entry to save all the scroll/scale/aplha values per stage
				ds_list_add(save_file, ["f2values", 
				global.nearscale,
				global.nearscroll,
				global.middlescale,
				global.middlescroll,
				global.farscale,
				global.farscroll,
				global.ontopscale,
				global.ontopscroll,
				global.platformalpha,
				global.onewayalpha,
				global.slidealpha]
				)
				
			var gibber = ds_list_write(save_file) //convert list to string
			var file = file_text_open_write(filepath) //open/create file
			file_text_write_string(file, gibber) //write list string to file
			file_text_close(file); //close file
			
			ds_list_destroy(save_file)

}