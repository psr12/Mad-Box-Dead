/// @description Insert description here
// You can write your code in this editor


if !surface_exists(surf)
{
	surf = surface_create(700,700)
}


view_surface_id[1] = surf


if view_current == 0 {
	
	var topleft = 400; 
	var toptop = 100;

	
	var sprite = spr_monitor
	
	var monscale = 2; //scale on monitor sprites, also dictates surf stretch size
	var spr_w = sprite_get_width(sprite)*monscale
	var spr_h = sprite_get_height(sprite)*monscale
	
	draw_sprite_stretched(spr_bg_dkgray, 0, topleft, toptop, spr_w*monumw, spr_h*monumh)
	
	if showlevel <= -1 draw_surface_stretched(surf, topleft, toptop, spr_w*monumw, spr_h*monumh);

	for ( var w = 0;  w < monumw; w++)
	{
		for (var h = 0; h < monumh; h++)
		{
			var draw_x = topleft+spr_w*w,
			var draw_y = toptop+ spr_h*h
			
			//if showlevel is high enough to show THIS monitor's seq
			if (h+1)*(w+1) <= showlevel draw_surface_stretched(surf, draw_x, draw_y,spr_w, spr_h);
			
			//static
			draw_sprite_stretched_ext(spr_static, helpstatic, draw_x, draw_y, spr_w, 
			spr_h, c_white, salpha)
			
			//monitor
			draw_sprite_stretched(sprite, 0, draw_x, draw_y, spr_w, spr_h)
				
		}

	}
	
	



	
	
}
