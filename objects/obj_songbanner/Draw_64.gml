/// @description Insert description here
// You can write your code in this editor

var orwidth = 1366
var buffer = 30;

var textwidth = string_width(text)
var textheight = string_height(text)

var sprwidth = sprite_get_width(sprite)
var sprheight = sprite_get_height(sprite)

var fromtop = 30
draw_sprite_ext(spr_songbanner, 0, orwidth-textwidth/2-buffer, fromtop, 
textwidth/sprwidth*2, textheight/sprheight, 0, c_white, image_alpha);
draw_set_alpha(image_alpha)
draw_text( orwidth-textwidth-buffer, fromtop-textheight/2,  text)

draw_set_alpha(1)

//draw_text(500, 500, timer)






