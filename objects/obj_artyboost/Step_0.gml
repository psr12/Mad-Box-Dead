/// @description Insert description here
// You can write your code in this editor






if state == 80 {
	timer++; 
	if timer > 400 {baby = instance_create(x, y, obj_tunevuln);
		state = 0;
		scr_changedummyseq(0, ch_spin, ch_boost)
		timer=0;
	}

}


