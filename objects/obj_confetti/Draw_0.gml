/// @description Insert description here
// You can write your code in this editor

/*
draw_set_color(c_green) //circle
var size = 22
if timer < 30 {
for (var q = 0; q <size; q++)
{
	draw_set_alpha(1-q/size   )
	draw_circle(x,y, timer*2+q+20, true);
}

draw_set_alpha(1)
draw_set_color(c_white)
}