/// @description Insert description here
// You can write your code in this editor


draw_self();

if state == 2 {
	
	var scale = max( 0, (targeter_timer/targeter_timer_max)*24 )
	
	draw_sprite_ext(spr_square_outline, 0, targetx, targety, scale, scale, timer*3, 
	make_color_hsv( (timer*2) mod 255 , 255, 255), 1 - (targeter_timer/targeter_timer_max)
	)
	
	//draw_sprite(sprColorPickursor, 0, targetx, targety);
}

//draw_text(x, y, state)





