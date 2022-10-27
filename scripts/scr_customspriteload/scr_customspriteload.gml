// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_customspriteload(foldername, filename){
	var directory = working_directory + foldername
	var fullpath = directory + filename + ".png"
	if file_exists( fullpath ) {
		var tempsprite = sprite_add(fullpath, 1, false, false, 0, 0)
		var xorg = sprite_get_width(tempsprite)/2
		var yorg = sprite_get_height(tempsprite)/2
	sprite_replace(asset_get_index(filename),fullpath, 1, false, false, xorg, yorg)}
	//sprite_delete(tempsprite)
}

