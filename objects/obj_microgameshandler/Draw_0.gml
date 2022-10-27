/// @description Insert description here
// You can write your code in this editor

var sineval = sin(sinetime) * (sineamp + (0.1*win));
var winsinout = sin(winsin)
var wallscale = 7
draw_sprite_ext(bg_labwall, 0, wall1x-1000*gamestate, wall1y, wallscale, wallscale, 0, c_white, 1)
draw_sprite_ext(bg_labwall, 0, wall2x+1000*gamestate, wall2y, wallscale, wallscale, 0, c_white, 1)

var shelfscale = 1.3
draw_sprite_ext(bg_shelves, 0, shelfx+1000*gamestate, shelfy, shelfscale, shelfscale, 0, c_white, 1)

var docscale = 2.6
docrot = winsinout * 2
draw_sprite_ext(spr_doctor, 0, docx, docy+1000*gamestate, docscale, docscale-sineval, docrot, c_white, 1)

var tablescale = 1
draw_sprite_ext(bg_lab_table, 0, table1x-1000*gamestate, table1y, tablescale, tablescale, 0, c_white, 1)
draw_sprite_ext(bg_lab_table, 0, table2x+1000*gamestate, table2y, tablescale, tablescale, 0, c_white, 1)

var flaskscale = 1;
var flaskrot = winsinout * 3;
draw_sprite_ext(bg_lab_flask, 0, flask1x, flask1y-1000*gamestate, flaskscale, flaskscale+sineval, flaskrot, c_white, 1)
draw_sprite_ext(bg_lab_flask, 0, flask2x, flask2y-1000*gamestate, flaskscale, flaskscale+sineval, -flaskrot, c_white, 1)

var cagescale = 2.25;
var cagerot = winsinout * 2;
draw_sprite_ext(spr_badcage, 0, cagex, cagey+1000*gamestate, cagescale, cagescale-sineval, cagerot, c_white, 1)

var wheelscale = 1.6;
var wheelrot = winsinout * -2;
draw_sprite_ext(spr_badwheel, 0, wheelx, wheely+1000*gamestate, wheelscale, wheelscale-sineval, wheelrot, c_white, 1)


var bottlescale = 1;
var bottlerot = winsinout * 2;
draw_sprite_ext(bg_lab_bottle, 0, bottlex, bottley-1000*gamestate, bottlescale, bottlescale-sineval, bottlerot, c_white, 1)

if pageturn > -1 {
draw_set_alpha(pageturn+1)
var clipscale = 2;
var cx = 700;
var cy = 350; 
var tscale = 4;
draw_sprite_ext(spr_clipboard, 0, cx, cy, clipscale, clipscale, 0, c_white, 1)
var twid = string_width(floornumber) * tscale /2
var thei = string_height(floornumber) * tscale /2
draw_set_color(c_black) draw_text_transformed(cx-twid, cy-thei+20, string(floornumber), tscale, tscale, -5 )
if pageturn > 0 draw_sprite_ext(spr_flipage, pageturn-1, cx+25, cy-55, clipscale, clipscale, 0, c_white, 1)
draw_set_defaults()
}


for ( var i = 0; i < hearts; i++)
{
draw_sprite_ext(middleheart, 0, 70 + 100*i, room_height-70, heartsize+heartpump,
heartsize+heartpump, 0, c_white, pageturn+1)
}

if state == 2.5 {
	var bosstsize = 4
var bs = "BOSS"
var btw = string_width(bs) * bosstsize
var bth = string_height(bs) * bosstsize
draw_set_alpha(winsin)
draw_set_color(c_red)
	draw_text_transformed(room_width/2 - btw/2, 200-bth/2, bs, bosstsize, bosstsize, 0)
draw_set_defaults()
}

if state == -2 {
	draw_sprite_stretched(spr_bg_black, 0, 0, 0, 9999, 9999)
}

//draw_text(100, 100, state)
//draw_text(100, 120, waitforbeats)