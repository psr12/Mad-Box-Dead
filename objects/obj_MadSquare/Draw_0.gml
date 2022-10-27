/// @description Insert description here
// You can write your code in this editor
//draw_sprite_ext(sprite_index, image_index, x,y,image_xscale, image_yscale,rotation, c_white, image_alpha)


//draw_text(x+90,y-100, vsp) 
//draw_text(x+100,y,bbox_bottom)
//draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, false)

if state == 404 { //game over
	draw_set_color(c_black)
	draw_rectangle(cam_x, cam_y, 99999, 99999, false)
	draw_set_defaults()
	draw_text(x, y-200, "ESC")
}

if state == 99
{
		var see_through = 0.3;
	draw_sprite_ext(spr_editor_crosshair_ver, 0, x,y, 1, 1, 0, c_white, see_through)
	draw_sprite_ext(spr_editor_crosshair_hor, 0, x,y, 1, 1, 0, c_white, see_through)
	draw_sprite_ext(spr_editor_crosshair_hor, 0, x,y, -1, 1, 0, c_white, see_through)
		
	draw_set_alpha(0.4)
	if global.mr1 != -1	
	{
		draw_sprite(mr_head1, 0, global.mr1[0], global.mr1[1])
	}
	if global.mr2 != -1	
	{
			draw_sprite(mr_tail1, 0, global.mr2[0], global.mr2[1])	
	}
	draw_set_defaults()
}

if state == 90 {
	if respawn_positioning_timer > max_respawn_positioning_timer/2 {
	draw_sprite(mr_respawnplatform, 0, x, y+64); }
	else if respawn_positioning_timer mod 4 <= 2{
		draw_sprite(mr_respawnplatform, 0, x, y+64);
	}
}
if jumps <= 1 && homing_target
{
	if distance_to_object(homing_target) <= homing_range
	{
		draw_targ_timer = lerp(draw_targ_timer, 0, 0.1)
		draw_set_color(c_aqua)
		draw_set_alpha(0.5)
			var i = 0;
			repeat(15) {draw_circle(homing_target.x, homing_target.y, 
				25+i+draw_targ_timer, true); i++}
		draw_set_color(c_white)
		draw_set_alpha(1)
	}
}
else {draw_targ_timer = draw_targ_timer_init}
//draw_text(x,y,time)


//draw_text(x,y+20,layer_get_id("Instances_1"))
//draw_text(x,y-70, gusth)
