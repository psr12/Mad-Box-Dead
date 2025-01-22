/// @description Insert description here
// You can write your code in this editor

if baby  //bounding box on selected objects
{
	var b = 5;
	draw_rectangle(baby.bbox_left-b, baby.bbox_top-b, baby.bbox_right+b,  baby.bbox_bottom+b, true)
}

if ds_list_size(selected_list) > 0 { //bbox on group selection
	draw_rectangle(left, up, right, down, true); //outline of selected group
	//draw_circle(sx, sy, 10 ,false);
}

if state != 99 and global.checkerboard //checkered background
{
	draw_set_alpha(0.3)
	var roomdiv = 8; // how many backgrounds to fill the room
	for (var hidraw = 0; hidraw < roomdiv; hidraw++) //vertical looping, goes first
	{
		for (var widraw = 0; widraw < roomdiv; widraw++) //horizontal looping, goes second
		{	//draw bg (roomdiv # of times), left to right, across 1 row
			draw_sprite_stretched(spr_background, 0, (room_width/roomdiv)*widraw, hidraw*(room_height/roomdiv), room_width/roomdiv, room_height/roomdiv)
		}
		//the loop again for each row
	}
	draw_set_defaults()
}

if state == 1000 {
	draw_set_defaults()
	draw_rectangle(mouse_x, mouse_y, deletex, deletey, true)
}
if state == 2000 {
	draw_set_defaults()
	draw_rectangle(mouse_x, mouse_y, sx, sy, true)
}
