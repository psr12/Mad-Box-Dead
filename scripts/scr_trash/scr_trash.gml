// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information



//for highlighting menu options

function scr_trash(slot){ //if on this collumn of options, highlight
	if slot == leftright {draw_set_color(c_white)}
		else draw_set_color(c_grey)
}

function scr_trashier(slot, row) { //if on this row of options, highlight
	if row == updown and slot == leftright {draw_set_color(c_white)}
	else draw_set_color(c_gray)
}