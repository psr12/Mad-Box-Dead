/// @description Insert description here
// You can write your code in this editor
draw_set_defaults()
//draw_text(20,20,state)
draw_sprite_ext(rs_worm, 0, 100, 40, 2+combo_bulge, 2+combo_bulge/2, 0, combo_color, 1)
draw_set_color(c_white)
var tx = 40
if !fever
{draw_text_transformed(tx, 30, "COMBO: " + string(combo_count), 1+combo_bulge, 1+combo_bulge, 0 )}
else { draw_set_color(c_orange)
	draw_text_transformed(tx, 30, "FEVER", 1+combo_bulge, 1+combo_bulge, 0 )}
draw_set_defaults()

var size = ds_list_size(chaka_list)
var i = 0
for (i = 0; i < size; i++)
{
	var sprite_sep = 130
	var drawx = 80 + i* sprite_sep
	var drawy = 160
	var sprite = rs_pata;
	switch chaka_list[| i] 
	{
		case "pata":
			sprite = rs_pata
		break;
		case "don":
			sprite = rs_don
		break;
		case "pon":
			sprite = rs_pon
		break;
		case "chaka":
			sprite = rs_chaka
		break;
	}
	if state == 0 {
		draw_sprite_ext(sprite, 0, drawx, drawy, 1+current_chaka_bulge, 1+current_chaka_bulge, 
		current_chaka_bulge*10*random_dir, c_white, 1-current_chaka_bulge)
	}
	if state == 5 {
		if combomax-combo-1 == i { //current pata
			draw_sprite_ext(sprite, 0, drawx, drawy, current_chaka_bulge, current_chaka_bulge, 
			current_chaka_bulge*10*random_dir, c_white, current_chaka_bulge) }
		if combomax-combo <= i { //untouched patas
			draw_sprite_ext(sprite, 0, drawx, drawy, 1, 1, 
			current_chaka_bulge*10*random_dir, c_white,  1)
		}
		//i's that are lower than the current 'anti-combo' are not drawn
		
	}
}