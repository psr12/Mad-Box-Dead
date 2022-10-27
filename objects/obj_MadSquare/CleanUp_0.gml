/// @description Insert description here
// You can write your code in this editor

if ds_exists(dash_animation_list, ds_type_list)
{
	ds_list_destroy(dash_animation_list);
}
if ds_exists(drop_animation_list, ds_type_list)
{
	ds_list_destroy(drop_animation_list);
}

part_system_destroy(partsys)