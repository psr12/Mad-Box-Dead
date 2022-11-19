/// @description Insert description here
// You can write your code in this editor




spd += 0.1
x += lengthdir_x(spd, dir)
y += lengthdir_y(spd, dir)

image_scale(spd/2)

if y > room_height {instance_destroy() }

