/// @description Insert description here
// You can write your code in this editor



	if pause {
		
	draw_set_alpha(0.8) //bg
	draw_set_color(c_black)
	draw_rectangle(0, 0, room_width, room_height, false);
	
	var dx = cam_w/2 
	for (var i = 0; i<array_length(ops); i++){
	var menop = ops[i];
	if i == opsel {draw_set_color(c_yellow)}
	else draw_set_color(c_gray)
		draw_ctext(dx, 200+150*i, menop);
	}
	draw_set_defaults();

	}
	

	if fadeblack > 0{
	draw_set_alpha(fadeblack) //bg
	draw_set_color(c_black)
	draw_rectangle(x-9999, y-9999, x+9999, y+9999, false);
	}

//draw_text_transformed(500, 500, fadeblack, 4, 4, 0)

