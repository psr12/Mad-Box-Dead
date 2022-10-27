// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_reset_level(){
//			room_restart()
var coroom = room;
if instance_exists(obj_rewindgoal)  {instance_destroy(obj_rewindgoal); 
		coroom = L16; }//for during finale
	
	scr_roomtrans(coroom, 10);
			if music != noone {audio_stop_sound(songinst)}
			state = 99; //so music doesn't restart, because its stopped^
				ds_list_copy(notelist, backup) //restart notes
				timer=onesec; showtext = 3;
			redcount=0; redhit = 0;
			alarm[0] = -1;
			repeat(onesec*3) {ds_list_insert(notelist,0,0)} //countdown empty slots
			scr_reset_score()
			
}

function scr_return_to_editor(){
	
		var roomgo = Room1; //editor
		var statego = 5; //editing
			ds_list_copy(notelist, backup) //restart notes
			timer=0; showtext = 4;
			redcount=0; redhit = 0;
			showingfrom = 0;
			alarm[0] = -1;
			scr_reset_score()
			scr_roomtrans(roomgo, statego);
			if music != noone {audio_stop_sound(songinst)}

}
function scr_storyproceed(){

			story_level_selected++;
			instorymode = story_level_selected;
			var roomgo = storylevellist[story_level_selected]; var statego = 99; 
			scr_setupsong(storysonglist[story_level_selected])
			scr_setupbeatmap(99) //99 in both, a bit redundant but 
			//scr_setupforsong() //setupforsong copies notelist  INTO backup
			repeat(onesec*3) {ds_list_insert(notelist,0,0)} //countdown empty slots

			timer=0; showtext = 4;
			redcount=0; redhit = 0;
			showingfrom = 0;
			alarm[0] = -1;
			scr_reset_score()
			scr_roomtrans(roomgo, statego);
			audio_stop_sound(songinst)
}
function scr_return_to_menu(){

		var roomgo = MainMenu; 
		var statego = -2; 
			ds_list_copy(notelist, backup) //restart notes
			timer=0; showtext = 4;
			redcount=0; redhit = 0;
			showingfrom = 0;
			alarm[0] = -1;
			scr_reset_score()
			scr_roomtrans(roomgo, statego);
			if music != noone {audio_stop_sound(songinst)}
}
