/// @description Insert description here
// You can write your code in this editor



var tscale = 2;
var sw = sprite_get_width(spr_treadmill) * tscale

//draw_sprite_ext(spr_bg_gray, 0, 0, 500, 100, 100, 0, c_white, 1) //behind treadmill bg

for (var f = 0; f < 8; f ++) //treadmill
{
	draw_sprite_ext(spr_treadmill, 0, f*sw + toffset, tready, 
	tscale, tscale, 0, c_white, 1)
}

if ringsize < sprite_get_width(spr_screen)  {
var sprite = whitebar;
var whitebarbuffer = 65;
draw_sprite_ext(sprite, 0, x+ringsize+whitebarbuffer, y, 1, 1, 0, c_white, 1)
//right side
draw_sprite_ext(sprite, 0, x-ringsize-whitebarbuffer, y, -1, 1, 0, c_white, 1)
//left side
}
//draw_text(200, 200, ringsize );
//draw_text(200, 240, div_4 );
//draw_circle(room_width/2, 200, ringsize, true);

draw_text(x+120,y-100, bpm) 

//heart
draw_sprite_ext(middleheart, 0, x, y, heartsize+heartpump,
heartsize+heartpump, 0, c_white, 1)

draw_sprite(middlebars,0, x,y)

var screenscale = 3;
draw_sprite_ext(spr_screen, 0, x,y, screenscale, screenscale, 0, c_white, 1)
draw_sprite_ext(spr_screen, 1, x,y, screenscale, screenscale, 0, c_white, 1)

