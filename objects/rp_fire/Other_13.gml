/// @description Insert description here
// You can write your code in this editor





// Inherit the parent event
event_inherited();

hsp = Approach(hsp, 0, 0.1)
vsp = Approach(vsp, 0, 0.3)

simple_collision()

timer++;
if timer > 60 instance_destroy()

attack_cooldown--;
if !attack_cooldown {
	var victim = instance_place(x, y, rp_follower)
	if victim and floor(victim.state) != 3 and image_alpha > 0.3
	{
		with victim event_user(4)
		play_sound(snd_fire)
		
		attack_cooldown = 30;
	}
}


image_angle += hsp*random_range(1,3) + rotate
image_alpha -= 0.01