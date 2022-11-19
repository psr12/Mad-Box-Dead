// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function scr_setupforsong(){ //adds blank slots for countdown, resets countdown
	showtext = 3; timer=onesec-grace/2;
	
	//skippy notes
	//do {
	//	var skipslot = ds_list_find_index(notelist, -6) //find 6s
	//	ds_list_replace(notelist, skipslot, -5) //replace with 'blank note' 
	//	repeat(global.skipammount) {ds_list_insert(notelist, skipslot, 0) } //insert real 'blank notes'
	//}
	//until (skipslot == -1)
	
	ds_list_copy(backup, notelist) //backup notelist, for looping/restarting
	repeat(onesec*3 - grace/2) {ds_list_insert(notelist,0,0)} //countdown empty slots
	

}