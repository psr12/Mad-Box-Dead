// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_ctext_color(xx, yy, text, color, alpha){

	//draws text centered on the X,Y rather than starting at the top left corner
	var w = string_width(text)/2
	var h = string_height(text)/2
	draw_text_color(xx-w, yy-h, text, color,color,color,color, alpha)

}