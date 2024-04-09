/// @description surface



//surface so bullets are 'inside the box'
var abw = attackbox_w/2
var abh = attackbox_h/2
draw_surface_part(surface, ph_1.x-abw, ph_1.y-abh, abw*2, abh*2, ph_1.x-abw, ph_1.y-abh )


var tsep = 50; //text separration, vertically


//text goes here, on top of black baackground
var tlx = ph_1.x - attackbox_w_menu/2 + 10 + 50
var tly = ph_1.y - attackbox_h_menu/2 + 10

if state == 0 draw_text(tlx, tly, textinbox); //smells like...

if state == 99.1 { //monster select
	
	for (var i = 0; i < ds_list_size(monster_list); i++)
	{
		if pitch_count < -2 || pitch_count > 2 {draw_set_color(c_yellow) }
		draw_text(tlx+50, tly, "* " + monster_list[| i].myname )
		draw_set_defaults()
		if i == menu_level1_selection draw_sprite(cursorsprite, 0, tlx, 
			tly+sprite_get_height(spr_ut_heart)/2 + i*tsep);
	}
	
}

if state == 60 { //action  select
	var actlist = ut_mobrat.act_options
	for (var i = 0; i < array_length(actlist); i++)
	{
		draw_text(tlx+50, tly+i*tsep, actlist[i] )
		if i == menu_level2_selection{
			draw_sprite(cursorsprite, 0, tlx, tly+sprite_get_height(spr_ut_heart)/2 + i*tsep ); }
	}
	
}

if state == 81 { //check info

var fulltext = textinbox;
var showtext = string_copy(fulltext, 0, timer )
draw_text_ext(tlx-50, tly, showtext, tsep, attackbox_w_menu);
	
}



if state == 99.2 { //item select
	
	for (var i = 0; i < ds_list_size(inventory); i++)
	{
		draw_text(tlx+50, tly+i*tsep, "* " + inventory[| i] )
		if i == menu_level1_selection draw_sprite(cursorsprite, 0, tlx, 
			tly+sprite_get_height(spr_ut_heart)/2 + i*tsep );
	}
	
}


