/// @description Insert description here
// You can write your code in this editor





// Inherit the parent event
event_inherited();

simple_collision()

cscale += 0.05

calpha = Approach(calpha, 0, 0.05)

if place_meeting(x, y+1, obj_cheese) hsp = lerp(hsp, 0, 0.1)

if place_meeting(x, y, rp_follower) and state == 0{
	play_sound(snd_coin2)
	state = 1
	vsp = -30
}

if state = 1
{
	image_alpha = Approach(image_alpha, 0, 0.05)
	if image_alpha <= 0 instance_destroy()
}


image_xscale = abs(sin(current_time * 0.01 + sinoffset)  )
image_xscale = clamp(image_xscale, 0.1, 1)