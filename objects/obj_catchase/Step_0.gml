/// @description Insert description here
// You can write your code in this editor

var credits_speed = 0.5


image_speed = abs( (x+210) - obj_MadSquare.x ) /150

image_speed = clamp(image_speed, 0, 18);

obj_MadSquare.x = lerp(obj_MadSquare.x, x+210, 0.01)

if obj_MadSquare.y < bbox_top+50 and abs(obj_MadSquare.x - x) < 300
{image_speed = 1}

var canskip = true;

if instance_exists(obj_notification){
	if credits_offset > -3800 {obj_notification.contact_wait++}
	else {obj_notification.contact_wait=0;
		canskip = false;}
}
else obj_recorder.corner_heart_overwrite = seq_blank;

if keyboard_check(vk_space) and canskip {
	if !audio_is_playing(snd_running2) play_sound(snd_running2,1)
	image_speed = 10
	credits_speed = 4;
}
else {
	audio_stop_sound(snd_running2)
}

var pup = layer_get_id("Backgrounds_1")
layer_hspeed(pup, -image_speed)


credits_offset -= credits_speed;


