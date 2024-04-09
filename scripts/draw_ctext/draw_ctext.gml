///@arg x
///@arg y
///@arg string
function draw_ctext(xx, yy, string) {

	var fstring = string_replace(string, "|", "")
	//draws text centered on the X,Y rather than starting at the top left corner
	var w = string_width(fstring)/2
	var h = string_height("A")/2
	draw_text(xx-w, yy-h, string)


}
function draw_ctext_transformed(xx, yy, string, scale) {

	var fstring = string_replace(string, "|", "")
	//draws text centered on the X,Y rather than starting at the top left corner
	var w = (string_width(fstring)*scale)/2
	var h = (string_height("A")*scale)/2
	draw_text_transformed(xx-w, yy-h, string, scale, scale, 0)


}
