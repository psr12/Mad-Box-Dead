/// @description scrapped visibility culling

alarm[3] = 3;

with obj_cheese{
	//var cam_h = camera_get_view_height(cam)
	//var cam_w = camera_get_view_width(cam)
	if collision_rectangle(cam_x, cam_y, cam_x+cam_w, cam_y+cam_h, id, false, false) {visible = true}
	else {visible = false;}	
}
with obj_onbeat{
	//var cam_h = camera_get_view_height(cam)
	//var cam_w = camera_get_view_width(cam)
	if collision_rectangle(cam_x, cam_y, cam_x+cam_w, cam_y+cam_h, id, false, false) {visible = true}
	else {visible = false;}	
}