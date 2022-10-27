/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if float {
var spine = sin(current_time/floatsin)
var scine = sin(current_time/squishsin)
drawy = y + spine * floatdist
image_yscale += scine*squishamt
image_xscale -= scine*squishamt
}

var ldx = lengthdir_x( spd, point_direction(x, y, targetx, targety) )
var ldy = lengthdir_y( spd, point_direction(x, y, targetx, targety) )

x += ldx
y += ldy

if abs(x - targetx) <= spd x = targetx
if abs(y - targety) <= spd y = targety


image_angle += rotate;