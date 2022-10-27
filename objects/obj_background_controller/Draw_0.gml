/// @description Insert description here
// You can write your code in this editor
/*
//original size of camera

var cam_w = 1366 * global.zoom
var cam_h = 768 * global.zoom

if ds_exists(lay_order,ds_type_list)
{
	var size = ds_list_size(lay_order)-1
		var mult = 1; //determines scroll speed
	for (var p = 0; p < size+1; p++)
	{
		scale = 1; //lay order is back to front
		var sprite = lay_order[| p]
				//get the height ratio, for stretching		
		var sw = sprite_get_width(sprite)
		var sh = sprite_get_height(sprite)
		if sh < cam_h //if bg's height is less than the camera's height
		{
			var scale = cam_h/sh;
		}
		//if custom background, use global scale values
		if obj_level_editor.theme_count == obj_level_editor.theme_size
		{
			if p == 0 {
				if object_index == obj_foreground {sh *= scale * global.ontopscale sw *= scale * global.ontopscale}
				else {sh *= scale * global.farscale sw *= scale * global.farscale }
				}
			
			if p == 1 {sh *= scale * global.middlescale sw *= scale * global.middlescale }
			if p == 2 {sh *= scale * global.nearscale sw *= scale * global.nearscale }
			if p == 3 {sh *= scale * global.ontopscale sw *= scale * global.ontopscale }
		}
		else {
			sh *= scale //scale up the sprite if too small, else scale = 1
			sw *= scale 
		}
		mult = 1 - (1/size) * p
		if object_index == obj_foreground {mult = -1} //foreground goes faster than camera
		//lower mult = 'can't catch up with the camera' = faster scrolling
		//higher than 1 = faster than camera = backwards scrolling
		//negative = runs opposite direction of camera = really fast scrolling
		
		//if custom background, use global scroll values
		if obj_level_editor.theme_count == obj_level_editor.theme_size
		{
			if p == 0 { if object_index == obj_foreground mult = global.ontopscroll
					else mult = global.farscroll
			}
			if p == 1 mult = global.middlescroll
			if p == 2 mult = global.nearscroll
		}
		var new_x = cam_x * mult; //where to start drawing, X POS
		while new_x < cam_x - sw {new_x += sw} //if totally offscreen, scooch over

		var wiggleroom = sh - cam_h
		var new_y = cam_y*mult;
		
		new_y = clamp(new_y, cam_y-wiggleroom, cam_y);

		var mmm = 0;
		do {
			draw_sprite_stretched(sprite, 0, new_x+mmm, new_y, sw, sh)
			mmm+=sw; //one loop for each time the bg needs to repeat to cover the screen
		}
		until (mmm > cam_w+sw)
	}
}
