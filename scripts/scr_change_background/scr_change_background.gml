// Script assets have changed for v2.3.0 see

//BACKGROUNDS ARE ORDERED FARTHEST TO NEAREST

function scr_change_background(){
			
			//change background and foreground here
				//based on theme count
				var bag = blank
				var fog = blank

			
			if theme_count > theme_size {theme_count=0;}
			
			with obj_background{
				ds_list_copy(lay_order, bag )
			}
			with obj_foreground{
				ds_list_copy(lay_order, fog )
			}
			with obj_background_controller {alarm[0] = 1} //set off calibration event
			
}