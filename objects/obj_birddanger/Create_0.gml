/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

max_wait = 24;
active_time = 2;
warning_time = 8;

image_alpha = 0;
state = 0;

first_time = true;

if instance_exists(obj_glitchy) {max_wait = 16;active_time = 1; }
//glitchy = faster