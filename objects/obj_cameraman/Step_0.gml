/// @description Insert description here
// You can write your code in this editor


//follow mad rat
//drag mouse to offset from mad rat
//scroll wheel to change zoom
//smaller zoom = more zoomed in


	camera_angle = lerp(camera_angle, target_camera_angle, 0.5); //approach target angle
	camera_set_view_angle(cam, camera_angle)

if (mouse_wheel_up() || mouse_wheel_down()) && keyboard_check(vk_shift)
{
	if global.zoom < global.maxzoomout {global.zoom += (mouse_wheel_down() - mouse_wheel_up()) * 0.05;
		}
	if global.zoom >= global.maxzoomout {global.zoom += (mouse_wheel_down() - mouse_wheel_up()) * (global.zoom/4)}
	global.zoom = clamp(global.zoom, global.maxzoomin, 99)
			targetzoom = global.zoom;

	//ini_open("options.ini")
	//ini_write_real("zoom", "zoom", global.zoom)
	//ini_close();
}
global.zoom = Approach(global.zoom, targetzoom, zoomspeed);

if mouse_check_button(mb_middle)
{
	xoffset += (mouse_xprevious - display_mouse_get_x()) *global.zoom
	yoffset += (mouse_yprevious - display_mouse_get_y()) *global.zoom
	
	var cw = camera_get_view_width(cam)/2
	var ch = camera_get_view_height(cam)/2
	xoffset = clamp(xoffset, -cw, cw)
	yoffset = clamp(yoffset, -ch, ch)
	
	ini_open("options.ini")
	ini_write_real("zoom", "xoffset", xoffset)
	ini_write_real("zoom", "yoffset", yoffset)
	ini_close();
}
//keeps camera from panning all the way off mad rat
//outside mb check, so also goes off when zooming camera 

	
//after offset check
mouse_xprevious = display_mouse_get_x()
mouse_yprevious = display_mouse_get_y()

if !camlock and instance_exists(obj_MadSquare) {
	if !camlockh x = obj_MadSquare.x
	y = obj_MadSquare.y

}
var zoom = global.zoom
	if ending {targetzoom = lerp(targetzoom, 0.5, 0.5) 
		global.zoom = lerp(global.zoom, 0.5, 0.5) 
		xoffset = 100; yoffset = -100;
		}
var finalwidth = zoom * orwidth
var finalheight = zoom * orheight


//zoom
camera_set_view_size(cam, finalwidth, finalheight )	


	//position
	camera_set_view_pos(cam, x-finalwidth/2 + xoffset +random(shake) ,
	y-finalheight/2 + yoffset +random(shake) )

	with obj_recorder { //right after camera moves, so not jittery
		layer_sequence_x(seq, cam_x+(cam_w/18))
		layer_sequence_y(seq, cam_y+cam_h-(cam_h/4.5))
	}

if instance_exists( obj_recorder) {
	if obj_recorder.state == 99 
	{
		if !instance_exists(obj_cutscenehandler){
			instance_activate_all()
			instance_deactivate_region(x-finalwidth, y-finalheight, x+finalwidth*2, y+finalheight*2, false, true)
			instance_activate_object(par_important)
			instance_activate_object(obj_oneway)
			instance_activate_object(obj_dropplatform)
		}
		
			//cutscenes
			var ldx = lengthdir_x( spd, point_direction(x, y, targetx, targety) )
			var ldy = lengthdir_y( spd, point_direction(x, y, targetx, targety) )

			x += ldx
			y += ldy

			if abs(x - targetx) <= spd x = targetx
			if abs(y - targety) <= spd y = targety

		
	}
}
shake = lerp(shake, 0, shakelerp);


