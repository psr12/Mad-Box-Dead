/// @description Insert description here
// You can write your code in this editor


draw_set_alpha(alpha)

var font = Font1;

if instance_exists(obj_glitchy) and string(name) == string(global.heartname) { 
	glitch_timer--;
	if glitch_timer < 5 {font = Font_glitchy; }
	if !glitch_timer { glitch_timer = random(glitch_time); }
	else font = Font1
}

draw_set_font(font);
var buffer = 25

var wid = max(string_width(textminusbars), widmin)/introscale  +buffer*2
var hei = max(string_height(textminusbars), heimin)/introscale +buffer*2
var dx = x-wid/2 
var dy = y-hei/2


var closest_thing = instance_nearest(x, y, obj_seqdummy)
var dir_thing = point_direction(x, y, closest_thing.x, closest_thing.y)
var xclamp = clamp(closest_thing.x, x-wid/2+5,  x+wid/2-5)
var yclamp = clamp(closest_thing.y, y-hei/2+5,  y+hei/2-5)



var scail = 1/introscale
//pointer
draw_sprite_ext(spr_textboxpointer, 0, xclamp, yclamp, scail, scail,
dir_thing+90, c_white, alpha)


draw_sprite_stretched(spr_textbox, 0, dx, dy, wid, hei)

draw_sprite_stretched(spr_bg_black, 0, dx, dy-24, max(string_width(name), 50)+buffer*2, string_height(name)-10)//name
		draw_set_color(c_white)
draw_text(dx+buffer, dy-24, name)



var sep = string_height("PP")
draw_set_color(c_black)
draw_text_ext(dx+buffer, dy+buffer, showtext, sep, wid-buffer*2)

var totallength = string_length(textminusbars)
if show >= totallength { //finished arrow
	draw_sprite_ext(spr_textboxarrow, 0, x + wid/2-buffer, y+hei/2-buffer, 1, 1, 0, c_white, alpha);
}




draw_set_defaults()

/*
draw_text( x, y-200, string_length(text))
draw_text( x, y-230, show )
draw_text( x, y-250, text )