// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_deadringer(rotate, time){

	var g = instance_create(x,y,obj_deadringer)
	
	if rotate != undefined {g.rotate = rotate}
	if time != undefined {g.time_to_die = time}
	
	g.sprite_index = sprite_index
	g.image_xscale = image_xscale
	g.image_yscale = image_yscale
	g.image_angle = image_angle
	g.image_blend = image_blend
}