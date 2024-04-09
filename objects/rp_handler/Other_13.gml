/// @description 'step'

current_chaka_bulge = Approach(current_chaka_bulge, 0, 0.05)
combo_bulge = zlerp(combo_bulge, 0.1)

if pata_timer < pata_time {
pata_timer++
if pata_timer == pata_time {
	play_sound(snd_pata2)
	pata_timer++
}
}


input_timer++;
if input_timer > input_timer_max and combo > 0 {
						state = 0;
					ds_list_clear(chaka_list)
					combo = 0;
					combo_count = 0;
					fever = false;
					combo_color = c_gray;
}