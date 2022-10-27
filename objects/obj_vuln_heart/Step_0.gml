/// @description Insert description here
// You can write your code in this editor


switch state
{
	case 0: //going in
		timer++;
		curvepos += curvespeed;
		x = xstart+sprite_width/2
		var val = animcurve_channel_evaluate(chan, curvepos)
		image_xscale = val*12;
		if timer > action_time {timer=0; state++; sprite_index = spr_br_heart; beats=0;}
		break;
		
	case 1:	//vulnerable
		if keyboard_check_pressed(vk_space) {instance_create_layer(x,y, layer, obj_vuln_heart);
			instance_destroy();
			}
		if beats >= 1 {image_xscale *= 0.8; image_yscale *= 0.8; beats = 0;}	
		image_xscale = lerp(image_xscale, initxscale, 0.2)
		image_yscale = lerp(image_yscale, inityscale, 0.2)
		break;
}