/// @description Insert description here
// You can write your code in this editor

if baby != noone //bounding box on selected objects
{
	var b = 5;
	draw_rectangle(baby.bbox_left-b, baby.bbox_top-b, baby.bbox_right+b,  baby.bbox_bottom+b, true)
}

if ds_list_size(selected_list) > 0 { //bbox on group selection
	draw_rectangle(left, up, right, down, true); //outline of selected group
	//draw_circle(sx, sy, 10 ,false);
}

if state != 99 //checkered background
{
	draw_set_alpha(0.2)
	for (var jodan = 0; jodan < 5; jodan++)
	{
	draw_sprite_stretched(spr_background, 0, (room_width/4)*jodan, 0, room_width/4, room_height/2)
	draw_sprite_stretched(spr_background, 0, (room_width/4)*jodan, room_height/2, room_width/4, room_height/2)
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
