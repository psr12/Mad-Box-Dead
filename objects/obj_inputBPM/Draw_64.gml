/// @description Insert description here
// You can write your code in this editor
draw_set_alpha(0.9)
draw_set_color(c_black)
draw_rectangle(-100, -100, 9999,9999,false);

draw_set_defaults()

draw_ctext(room_width/2, room_height/2, string(BPM) + textcursor )

draw_ctext(room_width/2, room_height/3, @"Type in BPM
ESC to cancel, Enter to confirm" )

