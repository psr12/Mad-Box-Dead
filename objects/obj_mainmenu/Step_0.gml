/// @description Insert description here
// You can write your code in this editor




time = (get_timer() - start_time);


div_4_previous = div_4;
div_4 = (floor(time/(micros_per_sec/bpm)) mod 4) + 1 ;

if div_4_previous != div_4 {
div_4_trigger = true; } else div_4_trigger = false;


if div_4_trigger {  //if animation is finished...
//scr_changeseq(asq_mr_howsthat,scale)
itskindascale += 0.5

	layer_sequence_headpos(seq, 0)
	layer_sequence_play(seq)
	//layer_sequence_headpos(baby, 0)
	//layer_sequence_play(baby)
	if !audio_is_playing(song_madratheart) { music =	play_sound(song_madratheart,1) }
}

	
itskindascale = lerp(itskindascale, itskindascaleinit, 0.1);

selected +=sign( (keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up)) +
(input_check_pressed(global.keyDown) - input_check_pressed(global.keyUp) ) +
 global.v_axis_press )

selected = Wrap(selected, 0, 3)
if instance_exists(obj_bossmgtransition) selected = 4;

if selected == 0 && 
( keyboard_check_pressed(vk_left) || keyboard_check_pressed(vk_right) ) ||
( keyboard_check_pressed(vk_end) || keyboard_check_pressed(vk_home) ) ||
( input_check_pressed(global.keyLeft) || input_check_pressed(global.keyRight) )
or abs(global.h_axis_press)
{
	tscale = 2.1
	bscale = 1.1
	//text and story button bulge a little when changing chapters
	var mult = 1; if keyboard_check(vk_shift) mult = 5;
	if global.methodOfInput == "GAMEPAD" story_level_selected += (keyboard_check_pressed(vk_right) - keyboard_check_pressed(vk_left)) * mult ;
	story_level_selected += (input_check_pressed(global.keyRight) - input_check_pressed(global.keyLeft)) * mult ;
	story_level_selected += global.h_axis_press * mult ;
	story_level_selected += (keyboard_check_pressed(vk_end) - keyboard_check_pressed(vk_home)) * 99 ;
	story_level_selected = clamp(story_level_selected, 1, array_length( obj_recorder.storylevellist )-1 )
}
