/// @description Insert description here
// You can write your code in this editor

//draw_text(200, 200, environment_get_variable("USERNAME") )


var slampha = itskindascale - itskindascaleinit
draw_sprite_ext(spr_logo, 0, 500, 250, itskindascale, itskindascale, 0, c_white, 1);
draw_sprite_ext(spr_yellowslams, 1, 200, 250, itskindascale, itskindascale, 0, c_white, slampha);
draw_sprite_ext(spr_yellowslams, 1, 800, 250, -itskindascale, itskindascale, 0, c_white, slampha);
draw_sprite_ext(spr_keyboardicon, 0, 450, 460, itskindascale-1, itskindascale-1, 0, c_white, 1);

draw_set_defaults();
//draw_text_transformed(550, 100, div_4_trigger, sqrt(itskindascale),sqrt(itskindascale), -50);
//draw_text_transformed(550, 150, div_4, sqrt(itskindascale),sqrt(itskindascale), -50);
//draw_text_transformed(550, 200, div_4_previous, sqrt(itskindascale),sqrt(itskindascale), -50);



var bscale = 2;
var by = 200;
var bx = 1100;
var cols = [c_gray, c_gray, c_gray, c_gray];
if selected >= 0 cols[selected] = c_white;
draw_sprite_ext(spr_buttonstory, 0, bx, by, bscale, bscale, 0, cols[0], 1); 
var tscale = 2

var rum = obj_recorder.storylevellist[story_level_selected]

draw_set_alpha(0.2);
//room name (C11)
draw_text_ext_transformed(bx-110, by-220, 
"[" + room_get_name(rum) + "]", 99, 999, tscale, tscale, -1)

//songname (automatic action)
draw_set_alpha(0.5);
var songnameis = string(obj_recorder.storysonglist[story_level_selected])
songnameis = string_replace(songnameis, ".ogg", "")
var songnamewidth = string_width(songnameis)
draw_text_ext_transformed(bx-songnamewidth*tscale+150, by-160, 
"[" + songnameis + "]" 
, 99, 999, tscale, tscale, -1)

draw_set_defaults()
//level number (13)
draw_text_ext_transformed(bx+110, by-40, 
"[" + string(story_level_selected) + "]", 99, 999, tscale, tscale, -1)
by+=150
draw_sprite_ext(spr_buttonlevelselect, 0, bx, by, bscale, bscale, 0, cols[1], 1); by+=150
draw_sprite_ext(spr_buttonoptions, 0, bx, by, bscale, bscale, 0, cols[2], 1); by+=150
draw_sprite_ext(spr_buttonquit, 0, bx, by, bscale, bscale, 0, cols[3], 1); by+=150