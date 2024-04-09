
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

//function scr_catpaw(xx, yy, angle){

//	var cp = instance_create_layer(xx,yy, "Instances_2", obj_catpaw_h);
//	cp.image_angle = angle;

//}

function scr_catpaw_v(xx, yy, angle){

	var cp = instance_create_layer(xx,yy, "Instances_2", obj_catpaw_v);
	cp.image_angle = angle;

} 


function scr_catpaw_rising(xx, yy, angle){

	var cp = instance_create_layer(xx,yy, layer, obj_drainpaw);
	cp.image_angle = angle;
	return cp

}