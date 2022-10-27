/// @description Insert description here
// You can write your code in this editor

mask_index = spr_blank;

if instance_exists(obj_MadSquare)
{
	px = obj_MadSquare.x
	py = obj_MadSquare.y
}

if state == 4
{
	brightness = Approach(brightness, 0.5, (0.5/game_get_speed(gamespeed_fps))/2 )
	if brightness == 0.5 {	with obj_recorder event_user(8); state=5; }	
}
/*
if keyboard_check_pressed(vk_control)
{
	layer_sequence_destroy(seq)
	seq = layer_sequence_create(layer, x, y, sq_mr_ready)
	layer_sequence_xscale(seq, scale)
	layer_sequence_yscale(seq, scale)
}
if keyboard_check_pressed(vk_alt)
{
	layer_sequence_destroy(seq)
	seq = layer_sequence_create(layer, x, y, sq_mr_shock)
	layer_sequence_xscale(seq, scale)
layer_sequence_yscale(seq, scale)
}
if keyboard_check_pressed(vk_shift)
{
	layer_sequence_destroy(seq)
	seq = layer_sequence_create(layer, x, y, sq_mr_cheer)
	layer_sequence_xscale(seq, scale)
	layer_sequence_yscale(seq, scale)
}
if keyboard_check_pressed(vk_control)
|| keyboard_check_pressed(vk_shift)
|| keyboard_check_pressed(vk_alt) layer_sequence_pause(seq)

if keyboard_check_pressed(vk_tab)
{brightness = 0.5}

var ler = 0.1;
brightness = lerp(brightness, 0, ler)