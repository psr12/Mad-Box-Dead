/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

instance_destroy()

var baby = instance_create(x,y, obj_deadhead)
with baby {image_scale(other.image_xscale)}

obj_birdboss2.hp--;


if obj_birdboss2.hp <= 0 
{
		with obj_recorder event_user(8)
		play_sound(snd_chicken,0.8)
		baby.speed = 1;
		baby.direction = 270;
}