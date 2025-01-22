/// @description Insert description here
// You can write your code in this editor

//draw_text(100,100, grav)
//draw_text(100,150, vsp)


var bx = 30; var by = 40;
var bh = sprite_get_height(spr_batteryfull)
var bw = sprite_get_width(spr_batteryfull)
if state != 99 and obj_recorder.opArray2d[2][3] { //not in editor, timer is on
	draw_sprite_ext(spr_batteryempty,0, bx, by,
	battery_size + battery_bulge,
	battery_size + battery_bulge,
	0, c_white, 1
	)
	var coloring = make_color_rgb(0, 174, 240)
	if battery_charge_showing < battery_max_charge/4 {coloring = c_red}
	
	if indefatigable {
		coloring = make_color_hsv((current_time/2) mod 255,255,255);	}
	
	draw_sprite_part_ext(spr_batteryfull, 0, 0, 0, 
	(battery_charge_showing / battery_max_charge) * bw,
	bh, bx+10, by+6,
	battery_size + battery_bulge,
	battery_size + battery_bulge,
	coloring, 1
	)
	
	if battery_charge_showing < battery_max_charge/5 {
	draw_set_color(c_red)
	}
	
	
	if !indefatigable { //battery charge
	draw_set_color(c_white)
	draw_text_transformed(bx + bw/4 , by + bh/4, 
	battery_charge_showing, 
	battery_size + battery_bulge, 
	battery_size + battery_bulge, 0 )
	draw_set_defaults();
	}
	//else { //scrapped, show song time remaining
	//	var showthistime = obj_finalstage.finaltime;
	//	draw_set_color(c_white)
	//draw_text_transformed(bx + bw/4 , by + bh/4, 
	//showthistime, 
	//battery_size + battery_bulge, 
	//battery_size + battery_bulge, 0 )
	//draw_set_defaults();
	//}
	
}