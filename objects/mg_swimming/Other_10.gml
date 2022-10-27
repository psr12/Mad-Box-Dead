/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();


	x += hsp;
	hsp = Approach(hsp, 0, 0.5)
	y = lerp(y, ystart, 0.1);
	image_xscale = Approach(image_xscale, scale, 0.1)
	image_yscale = Approach(image_yscale, scale, 0.1)

	if x > room_width - 120 and state == 0 {state = 1;
		image_xscale =1.2
		xstart = x+20; x += 40
		play_sound(snd_correct, pitch)
		play_sound(snd_bonk, pitch)
		sprite_index = spr_ratswim3;
		win = true;
		}

if state == 0{

	if !updown {
		if keyboard_check_pressed(vk_down)
		{
			updown = !updown;
			hsp = 16; y += 70; sprite_index = s1;
			ystart = 350+30
			part_particles_create(partsys, x+50,y, part_splash, 30)
			play_sound(snd_splash, pitch)
			image_xscale =1.5
			image_yscale =0.5
		}
	}
	else {	
		if keyboard_check_pressed(vk_up)
		{
			updown = !updown;
			hsp = 11; y -= 60; sprite_index = s2;
			ystart = 350-30
			part_particles_create(partsys, x+50,y, part_splash, 30)
			play_sound(snd_splash, pitch-0.05)
			image_yscale =1.5
			image_xscale =0.5
		}
	}
}

if state == 1 {
	ystart += drown;
	drown = Approach(drown, 0.1, 0.05);
	x = lerp(x, xstart, 0.1);
}