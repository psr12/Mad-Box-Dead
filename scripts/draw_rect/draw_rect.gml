///@arg x
///@arg y
///@arg vertleng
///@arg horileng
///@arg outline

//is centered
function draw_rect() {

	draw_rectangle(
	 argument[0] - argument[3]/2,
	 argument[1] - argument[2]/2,
	 argument[0] + argument[3]/2,
	 argument[1] + argument[2]/2,
	 argument[4]
	)


}
