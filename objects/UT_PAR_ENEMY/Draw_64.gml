/// @description Insert description here
// You can write your code in this editor



var hplen = 150/2;
var hphei = 40/2;

draw_set_alpha(hpalpha)
var dy = y+100
draw_set_color(c_red)
draw_rectangle(x-hplen, dy-hphei, x+hplen, dy+hphei,false)

draw_set_color(c_lime)
draw_rectangle(x-hplen, dy-hphei, x-hplen+(hplen*2)*(hpshowing/maxhp), dy+hphei,false)




draw_set_defaults()