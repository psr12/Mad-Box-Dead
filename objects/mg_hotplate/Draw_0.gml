/// @description Insert description here
// You can write your code in this editor

draw_self();

var ratscale = 1.5
draw_sprite_ext(ratsprite, 0, ratx, raty, ratscale, ratscale, 0, c_white, 1 )


var clockpos = [1200, 450]
var csize = 2
draw_sprite_ext(spr_digitalclock, 0, clockpos[0], clockpos[1], csize, csize, 0, c_white, 1)

if state == 2 {
	var alpha = 1;
	if timer mod 120 > 60 alpha = 0;
	var tsize = 3;
	draw_set_alpha(alpha)
	draw_set_color(c_black)
	
var seconds = string( floor(reactionspeed/1000000) )
var miliseconds = string( floor(reactionspeed/10000) )

var fulltext = seconds + ":" + miliseconds;

	var twid = string_width(fulltext)*tsize
	var thei = string_height(fulltext)*tsize
	
	draw_text_ext_transformed(clockpos[0]-twid/2, clockpos[1]-thei/2+20,
	fulltext,
	0, 9990, tsize, tsize, 0);
	draw_set_defaults()
}