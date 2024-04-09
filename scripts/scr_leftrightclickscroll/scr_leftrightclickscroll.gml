// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_leftrightclickscroll(){
return ( mouse_check_button_pressed(mb_right) - mouse_check_button_pressed(mb_left) )
}

function scr_bg_sprite_scroll(spritenum ){
	
	var temp = spritenum + scr_leftrightclickscroll()
	temp = Wrap(temp, 1, ds_list_size(obj_recorder.bg_tiles)-1 )
	return temp
}