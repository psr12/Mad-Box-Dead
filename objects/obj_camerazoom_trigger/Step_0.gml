/// @description Insert description here
// You can write your code in this editor


if place_meeting(x,y,obj_MadSquare)
{
	
	if obj_MadSquare.state == 0 {
	global.zoom = Approach(global.zoom, zoom, zoomount) ;
	if global.zoom == zoom 	instance_destroy()
	}
}


if instance_exists(obj_MadSquare)
{
	if obj_MadSquare.state == 99 {
		var spize = sprite_get_width(spr_mousewheelicon) * scale
		var whel = -mouse_wheel_down() + mouse_wheel_up(); //down is negative, up is positive
		whel *= 0.1;
		if keyboard_check(vk_shift) {whel *= 2}
		
	if mouse_x == clamp(mouse_x, x-xoff, x-xoff+spize) //top wheel
	and mouse_y == clamp(mouse_y, y-yoff, y-yoff+spize)
		{
			zoom += whel;
		}
	if mouse_x == clamp(mouse_x, x-xoff, x-xoff+spize) //bottom wheel
	and mouse_y == clamp(mouse_y, y+yoff, y+yoff+spize)
		{
			var duh = 100;
			if zoomount = 1 zoomount = instant; // incase going down from instant
			zoomount += whel/duh
			zoomount = clamp(zoomount, 0.001, instant)
			if zoomount == instant zoomount = 1; // if >= instant, change to 1
		}
	}
	
}