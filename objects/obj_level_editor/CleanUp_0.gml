/// @description Insert description here
// You can write your code in this editor

/*
sprite_delete(custombg[| 0])
sprite_delete(custombg[| 1])
sprite_delete(custombg[| 2])
sprite_delete(customfg[| 0])
*/

if ds_exists(platform_list, ds_type_list) ds_list_destroy(platform_list)
if ds_exists(platform_names, ds_type_list) ds_list_destroy(platform_names)
if ds_exists(platform_icons, ds_type_list) ds_list_destroy(platform_icons)
if ds_exists(enemy_list, ds_type_list) ds_list_destroy(enemy_list)
if ds_exists(enemy_names, ds_type_list) ds_list_destroy(enemy_names)
if ds_exists(enemy_icons, ds_type_list) ds_list_destroy(enemy_icons)
if ds_exists(custombg, ds_type_list) ds_list_destroy(custombg)
if ds_exists(customfg, ds_type_list) ds_list_destroy(customfg)
if ds_exists(save_file, ds_type_list) ds_list_destroy(save_file)



if ds_exists(selected_list, ds_type_list) ds_list_destroy(selected_list)
if ds_exists(copy_list, ds_type_list) ds_list_destroy(copy_list)
