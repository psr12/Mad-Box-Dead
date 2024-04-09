// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function scr_setupforsong(){ //adds blank slots for countdown, resets countdown
	showtext = 3; timer=onesec-grace/2;

	//red note options
	var red_note_option = opArray2d[2][6] 
	//black note options
	var black_note_option = opArray2d[2][8] 
	
	var i = 0;
	var sizeB = ds_list_size(notelist)
	for (i=0; i < sizeB; i++)
	{
		
		switch  red_note_option
		{
			case 1: //normal, skip this
				break; break;
				
			case 2: //reds off, replace with 0
				if notelist[| i] == 2 {ds_list_replace(notelist,i,0) }
			break;
			
			case 3: //blues off, replace with 0
				if notelist[| i] == 3 {ds_list_replace(notelist,i,0) }
			break;
			
			case 4: //reds and blues off, replace with 0
				if notelist[| i] == 2 {ds_list_replace(notelist,i,0) }
				if notelist[| i] == 3 {ds_list_replace(notelist,i,0) }
			break;
			case 5: //reds and blues turn into whites, 2+5 -> 1
				if notelist[| i] == 2 {ds_list_replace(notelist,i,1) }
				if notelist[| i] == 3 {ds_list_replace(notelist,i,1) }
			break;

		}
		
		if !black_note_option { //black notes off, replace with 0
			if notelist[| i] == 4 {ds_list_replace(notelist,i,0) }
		}
		
	}
	
			/*
				1 = normal
				2 = reds off
				3 = blues off
				4 = both off
				5 = convert to white
			*/	

	ds_list_copy(backup, notelist) //backup notelist, for looping/restarting
	repeat(onesec*3 - grace/2) {ds_list_insert(notelist,0,0)} //countdown empty slots
	
	//var helpme = audio_play_sound(music,1,0, 0.01 )
	
}