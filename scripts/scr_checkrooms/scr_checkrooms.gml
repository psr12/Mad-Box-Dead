// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_checkrooms(){

ds_list_clear(roomlist )

ds_list_add( roomlist,
Tutorial,
Enemies,
Shadow,
Undertale,
Ratapon,
L1,
L2,
L3,
L3e1,
L4,
L5,
L6,
L6e1,
L7,
L8,
L8e1,
L9,
L10,
L11,
L12,
L13,
L14,
L15,
L16,
L17,
E1,
E2,
E3,
E4,
E5,
E6,
E7,
E8,
E8e1,
E9,
Custom,
)

var file = file_find_first("levels/*", 0)
if file != ""{
	ds_list_add(roomlist, file)
	
		do { file = file_find_next() 
			if file != "" {ds_list_add(roomlist, file)} 
		}
		until (file = "")
	}
	
		file_find_close()
}