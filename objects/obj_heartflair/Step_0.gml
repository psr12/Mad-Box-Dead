/// @description Insert description here
// You can write your code in this editor


timer--;

image_angle = sin(timer*0.1) * 20;
image_alpha = timer/40; 

y -= accel;

accel = lerp(accel,0, 0.05);
if !timer instance_destroy();