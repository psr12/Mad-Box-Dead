/// @description Insert description here
// You can write your code in this editor





// Inherit the parent event
event_inherited();
	var obj = rp_fire
	if rp_handler.rain and distance_to_object(rp_leader) < 1000 
	and image_index != 1
	{image_index = 1; flip = 1; }
	
	if image_index== 1  obj = rp_smoke
	
	if image_index == 0 and random(1) > 0.7
	{
	
var baby = instance_create_depth(x, y-30, depth, obj)
with baby {
	vsp = random_range(-8,-5)
	hsp = choose(-5,5) 
	rotate = random_range(-2,2)
	audio_stop_sound(snd_fire)
	audio_stop_sound(snd_puff)
}
	}
	
	
	
if flip != -8 {
	flip -= 0.2
	image_xscale = max( 0.01, abs(flip*scale) )
	if flip <= -1 flip = -8
}