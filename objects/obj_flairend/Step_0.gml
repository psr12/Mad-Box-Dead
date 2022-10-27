/// @description Insert description here
// You can write your code in this editor
killme--;

var ldx = lengthdir_x( spd, point_direction(x, y, targetx, targety) )
var ldy = lengthdir_y( spd, point_direction(x, y, targetx, targety) )

x += ldx
y += ldy

if abs(x - targetx) <= spd x = targetx
if abs(y - targety) <= spd y = targety


