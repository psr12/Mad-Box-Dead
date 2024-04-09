/// @description Insert description here
// You can write your code in this editor

//draw_text(100, 300, state)

draw_set_alpha(0.2)
draw_text(100, 100, @"Drop/Jump = A
Charge/Dash = B"

)
draw_set_defaults()
var hplength = 100;
var hpheight = 30;
var hpyoff = 150
var hpxoff = sprite_width/2
var xx = x - hpxoff; 
var yy = y - hpyoff;
draw_set_color(c_red)
draw_rectangle(xx, yy, xx + hplength, yy + hpheight, false)

draw_set_color(c_yellow)
draw_rectangle(xx, yy, xx + hplength*(hp/maxhp), yy + hpheight, false)
draw_set_defaults()
draw_ctext(xx + hplength*1.5, yy+string_height("A")/2 , string(hp) + "/" + string(maxhp) )


var icon_scale = 2
var ibuffer = 100
for ( var i=0; i < array_length(menu_sprites); i++)
{
	var color = c_gray
	if i == four_icons_cursor_selection {color = c_white; 
		draw_sprite_ext(cursorsprite, 0, x-sprite_width+70 + sprite_width*i + ibuffer,
		y - sprite_height/2, 1, 1, 0, c_white, icon_alpha)
		}
		
	draw_sprite_ext(menu_sprites[i], 0, x - sprite_width/2 + sprite_width*i + ibuffer, 
	y - sprite_height/2, icon_scale, icon_scale, 0, color, icon_alpha)
	
}




draw_set_defaults()


