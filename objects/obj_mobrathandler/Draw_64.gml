/// @description Insert description here
// You can write your code in this editor


	draw_set_alpha(alpha)
	draw_set_color(c_black)
	draw_rectangle(0,0,9999,9999,false)
	draw_set_defaults()

	draw_set_color(c_green)
	draw_sprite_ext(spr_raticon, 0, drawx, drawy, rnscale+1, rnscale+1, 0, c_green, 1);
	draw_text_transformed(drawx + 32, drawy, " x " + string(showratnum), rnscale, rnscale, 0 )
	draw_set_defaults()
	
	draw_text_transformed(gox, goy, justshowforit, 4, 4, 0 )




