/// @description Insert description here
// You can write your code in this editor


promptime= Approach(promptime, 0.1, 0.7);
var tscale = 1+maxpromptime/promptime
var twid = string_width(prompt)*tscale
var thei = string_height(prompt)*tscale
if promptime > 0.1 {

draw_set_color(c_white)
draw_text_transformed(room_width/2-twid/2, room_height/2-thei/2, prompt, tscale, tscale, 0)
draw_set_defaults()
}


draw_line_width(0, room_height-20, room_width/8 * timeleft, room_height-20, 20)