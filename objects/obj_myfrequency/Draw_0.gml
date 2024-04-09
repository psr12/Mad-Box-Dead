/// @description Insert description here
// You can write your code in this editor






var scale = heartsize+heartpump

//heart
draw_sprite_ext(spr_freqheart, 0, x, y, scale,
scale, 0, c_white, image_alpha);

scale = image_xscale+heartsize+heartpump-1;

//dial
draw_sprite_ext(spr_dial, 0, x, y, scale, scale, dial1/3 + 60, c_white, image_alpha)

//ekg
draw_self();

if usethese > 360 draw_sprite_ext(spr_keyboardicon, 0, x+300, y, 4, 4, 0, c_white, (usethese-360)/400);

//draw_set_defaults()
//draw_text( 100, 100, state)