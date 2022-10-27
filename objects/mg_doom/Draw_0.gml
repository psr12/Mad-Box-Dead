/// @description Insert description here
// You can write your code in this editor

draw_sprite_stretched(bg_doom, 0, 0, 0, room_width, room_height-25)

var gamespeed = game_get_speed(gamespeed_fps);

var impx = room_width/2;
var impy = 300;
//var impscale = 4;
var impsprite = spr_impwalk;
if !imphealth {impsprite = spr_impdeath}
var impspeed = sprite_get_speed(impsprite)

	draw_sprite_ext(impsprite, index/(gamespeed/impspeed), impx, impy, 
	impscale, impscale, 0, c_white, 1);

var shotx = room_width/2;
var shoty = 590;
var shotscale = 4;
var shotsprite = spr_shotgun;

//var shotspeed = sprite_get_speed(shotsprite)
if state == 0 or state == 1{
	draw_sprite_ext(shotsprite, sindex, shotx, shoty,
	shotscale, shotscale, 0, c_white, 1);
}


//draw_text(50, 50, imphealth)

draw_self();