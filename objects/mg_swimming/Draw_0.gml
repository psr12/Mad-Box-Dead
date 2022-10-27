/// @description Insert description here
// You can write your code in this editor

draw_self()

draw_set_alpha(0.2)
draw_set_color(c_aqua)
draw_rectangle(0,350,room_width, room_height, false)

draw_set_color(c_white)
draw_rectangle(0,100,room_width, room_height, false)
draw_set_alpha(0.5)
draw_rectangle(room_width,100,room_width-10, room_height, false)

draw_set_alpha(0.2)
draw_set_color(c_black)
draw_rectangle(0,200,room_width, 210, false)
draw_rectangle(0,300,room_width, 310, false)
draw_set_defaults()


if state == 0 {
var pressdis = 200
var dscale = 2;
if !updown draw_sprite_ext(spr_pressdown, 0, x, y+pressdis, dscale, dscale, 0, c_white, 1)
else draw_sprite_ext(spr_pressup, 0, x, y+pressdis, dscale, dscale, 0, c_white, 1)
}