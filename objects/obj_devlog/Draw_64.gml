/// @description Insert description here
// You can write your code in this editor

var guiw = display_get_gui_width()
if global.zoom > 90 or (global.zoom > 2 and room = E10){
	draw_sprite_ext(spr_bg_black, 0, 0, 0, 999, 999, 0, c_white, 0.6)

	draw_set_font(font0)
	draw_text_ext(11, 111, text, 20, guiw)
	draw_set_defaults()
}
