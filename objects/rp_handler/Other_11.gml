/// @description on hit
if state = 0 and !alarm[8]{
	
	var didhit = false;
	var pitch = 1;
	var twosounds = false;
	var drum = snd_pata
	//if input_check(global.keyJump)
	//{
	//	ds_list_add(chaka_list, "don")	
	//	pitch = 0.8; didhit = true; drum = snd_pon
	//}
	if input_check(global.keyDash) || input_check_released(global.keyDash)
	{
		ds_list_add(chaka_list, "pon")	
			pitch = 1; didhit = true; drum = snd_pon
	}
	if input_check(global.keyCharge) || input_check_released(global.keyCharge)
	{
		ds_list_add(chaka_list, "chaka")
			pitch = 1.1; didhit = true;
			drum = snd_chaka
	}
	if input_check(global.keyDrop) || input_check_released(global.keyDrop)
	{
		ds_list_add(chaka_list, "pata")	
			pitch = 1.05; didhit = true;
			 drum = snd_pata1
			 pata_timer = 0;
	}

	if didhit {
		alarm[7] = 20
		waitabeat = true;
		play_sound(drum, pitch)
		current_chaka_bulge = 0.5;
		combo++;
		if combo >= 4 state = 5;
		input_timer = 0;
	}

}