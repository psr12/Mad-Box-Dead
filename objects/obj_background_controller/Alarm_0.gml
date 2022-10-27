/// @description Insert description here
// You can write your code in this editor

//BACKGROUNDS ARE ORDERED FARTHEST TO NEAREST
//BACKGROUNDS ARE ORDERED FARTHEST TO NEAREST

//var cam_w = camera_get_view_width(cam)


var los = ds_list_size(lay_order)

layerlist = ds_list_create()
bglayerlist = ds_list_create()

for (var p = 0; p < los; p++)
{
	var sprite = lay_order[| p]
	if object_index == obj_foreground {	var layerid = layer_create(950) }
	else {var layerid = layer_create(999-p)}
	var bgid = layer_background_create(layerid, sprite )
	ds_list_add(bglayerlist, bgid); //add layer to a list
	ds_list_add(layerlist, layerid); //add background layer to a list
	
	var scale = 1;
	var scroll = 1;
	switch p
	{
		case 0: if object_index == obj_foreground
		{scale = global.ontopscale; scroll = global.ontopscroll
			layer_depth(layerid, -11000) } 
		
			else {scale = global.farscale; scroll = global.farscroll; }
			break;
		case 1: scale = global.middlescale; break;
		case 2: scale = global.nearscale; break;
	}
	
	layer_background_xscale(bgid, scale);
	layer_background_yscale(bgid, scale);
	
	layer_background_htiled(bgid, true)
	layer_background_vtiled(bgid, true)
}