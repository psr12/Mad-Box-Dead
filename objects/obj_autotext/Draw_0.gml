/// @description Insert description here
// You can write your code in this editor


draw_set_alpha(alpha)
var buffer = 25

var wid = max(string_width(textminusbars), widmin)/introscale  +buffer*2
var hei = max(string_height(textminusbars), heimin)/introscale +buffer*2
var dx = x-wid/2 
var dy = y-hei/2

draw_sprite_stretched(spr_textbox, 0, dx, dy, wid, hei)

draw_sprite_stretched(spr_bg_black, 0, dx, dy-24, max(string_width(name), 50)+buffer*2, string_height(name)-10)//name
		draw_set_color(c_white)
draw_text(dx+buffer, dy-24, name)

var sep = string_height("PP")
draw_set_color(c_black)
draw_text_ext(dx+buffer, dy+buffer, showtext, sep, wid-buffer*2)

draw_set_defaults()

/*
draw_text( x, y-200, string_length(text))
draw_text( x, y-230, show )
draw_text( x, y-250, text )