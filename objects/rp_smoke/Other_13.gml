/// @description Insert description here
// You can write your code in this editor





// Inherit the parent event
event_inherited();

hsp = Approach(hsp, 0, 0.1)
vsp = Approach(vsp, 0, 0.3)

simple_collision()

timer++;
if timer > 60 instance_destroy()




image_angle += hsp*random_range(1,3)
image_alpha -= 0.01