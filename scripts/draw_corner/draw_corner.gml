///@arg sprite
///@arg subimg
///@arg x
///@arg y
function draw_corner() {

	//draws from the corner, instead of center


	var sprt = argument[0]
	var xx = argument[2]
	var yy = argument[3]

	var sw = sprite_get_width(sprt)
	var sh = sprite_get_height(sprt)

	draw_sprite(sprt, argument[1], xx+sw/2 , yy+sh/2 )


}
