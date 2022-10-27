/// @description Insert description here
// You can write your code in this editor

if alarm[0] > -1 exit

var los = ds_list_size(layerlist)

for (var p = 0; p < los; p++)
{
	var layerid = layerlist[| p]
	var bgid = bglayerlist[| p]

	var scale = 1;
	var scroll = 1;
	switch p
	{
		case 0: if object_index == obj_foreground {scale = global.ontopscale scroll = global.ontopscroll; } 
			if object_index == obj_background {scale = global.farscale; scroll = global.farscroll; }
			break;
		case 1: scale = global.middlescale; scroll = global.middlescroll; break;
		case 2: scale = global.nearscale; scroll = global.nearscroll; break;
	}
	var sh = sprite_get_height( layer_background_get_sprite(bgid) )
	var tooshort = 1;
	if orheight*2 > sh {tooshort = (orheight*2)/sh;} //if bg is smaller than cam, increase by default
	layer_background_xscale(bgid, tooshort*scale);
	layer_background_yscale(bgid, tooshort*scale);
	
	var xpos = cam_x
	var ypos = cam_y
	
	//commented areas are a scrapped thing to keep bg from scrollling off screen
	//var spreight = sh * scale * tooshort 
	//var wiggleroom = spreight - cam_h
	
	var whereto = lerp(0, xpos, scroll)
		//	if whereto < 0 whereto = 0
			layer_x(layerid, whereto)
	var whento = lerp(0, ypos, scroll)
			//if p != 0 whento = clamp(whento, -wiggleroom, 0);
			layer_y(layerid, whento)
}

//for testing
//if object_index == obj_background layer_y(layerlist[| 0], mouse_y )