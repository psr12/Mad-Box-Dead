/// @description Insert description here
// You can write your code in this editor

if instance_exists(tunein) and instance_exists(rp_leader) {
tunein.x = rp_leader.x
tunein.y = rp_leader.y
}


obj_cameraman.xoffset = lerp( obj_cameraman.xoffset, 
( input_check(global.keyRight) - input_check(global.keyLeft) ) * 500 + 100,
0.1)

//with obj_onbeat {event_user(3) }
//if keyboard_check_pressed(vk_space) with obj_onbeat event_user(0)

don_timer--
if input_check_pressed(global.keyJump) {
	don_timer = don_cooldown;
	don_counter++;
	instance_create_depth(rp_leader.x - 500 + 100*don_counter , rp_leader.y-300, depth, rp_don)
	if don_counter >= 5 {
		rain = true;
		don_counter = 0;
	}
}

if !don_timer {
	don_counter = 0;
	rain = false;
		audio_sound_gain(rainsound, 0, 1000)

	part_emitter_stream(global.partsys, raincloud, global.part_raincloud, 00)
	part_emitter_stream(global.partsys, raindrops, global.part_patarain, 0)

}

if rain {
	audio_sound_gain(rainsound, 1, 1000)
	part_emitter_region(global.partsys, raincloud, obj_cameraman.x-cam_w, obj_cameraman.x+cam_w, 
	0, 200, ps_shape_rectangle, ps_distr_linear)
	
	part_emitter_region(global.partsys, raindrops, obj_cameraman.x-cam_w, obj_cameraman.x+cam_w, 
	0, 200, ps_shape_rectangle, ps_distr_linear)
	
	part_emitter_stream(global.partsys, raincloud, global.part_raincloud, 6)
	part_emitter_stream(global.partsys, raindrops, global.part_patarain, 1)
	
}