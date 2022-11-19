/// @description Insert description here
// You can write your code in this editor



var list = ds_list_create()
var contact = instance_place_list(x, y, obj_vulnlaser, list, false)
if ds_list_size(list)
{
	do {
	with list[| 0] {event_user(4) }
	image_alpha = 0.5
	ds_list_delete(list, 0)
	}
	until (ds_list_size(list) == 0 )
}


	image_alpha = lerp(image_alpha, 0.2, 0.2)


if obj_MadSquare.state != 0 and !failed {
	failed = true;
	scr_changedummyseq(0, ch_shocked, ch_shy)
}

ds_list_destroy(list)