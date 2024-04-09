// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_miss_remove(){
	//complete whiff, remove surrounding notes
	{
		if opArray2d[2][7] 
		{
			var miss_remove_radius = 60; //60 frames, slots, 
			var i = 0;
			for (i=0; i<miss_remove_radius; i++;)
			{
				var ute = notelist[| i] 
				if ute == 1 or ute = -2 {ds_list_replace(notelist, i, -2); } //big notes become 'spent', for time calc
					// or -2 so you don't remove those either
					
				else ds_list_replace(notelist, i, 0); //every other note is killed completely
			}
				
		}
	}
			
}