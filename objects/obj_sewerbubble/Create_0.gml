/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();


grav = -0.01;
vsp = -1;
image_scale(2.5)

var p = 0
do {x = random_range(100, room_width); p++} 
until ( collision_circle(x, y, 200, obj_sewerbubble, true, true) == noone || p > 50)