/// @description Insert description here
// You can write your code in this editor


if ds_exists(songlist, ds_type_list) ds_list_destroy(songlist)
if ds_exists(notelist, ds_type_list) ds_list_destroy(notelist)
if ds_exists(backup, ds_type_list) ds_list_destroy(backup)
if ds_exists(roomlist, ds_type_list) ds_list_destroy(roomlist)

//if ds_exists(custombg, ds_type_list) ds_list_destroy(custombg)
//if ds_exists(customfg, ds_type_list) ds_list_destroy(customfg)


part_system_destroy(global.partsys);

/*
sprite_delete(sp1)
sprite_delete(sp2)
sprite_delete(sp3)
sprite_delete(sp4)
*/
audio_destroy_stream(music)