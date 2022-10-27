// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function scr_setupforsong(){ //adds blank slots for countdown, resets countdown
	showtext = 3; timer=onesec-grace/2;
	ds_list_copy(backup, notelist) //backup notelist, for looping/restarting
	repeat(onesec*3 - grace/2) {ds_list_insert(notelist,0,0)} //countdown empty slots
}