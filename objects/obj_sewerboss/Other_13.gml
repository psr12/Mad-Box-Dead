/// @description step
// Inherit the parent event
event_inherited();

//script for : replace mob rats with rat vuln, then kill them

var scaryspeed = 1.5;


if beat > 315 {	//raise water, make dark
	obj_jumpywater.y -= 0.5;
		obj_light.image_alpha = Approach(obj_light.image_alpha , 1, 0.002);
}

if beat >= 315 {	//raise water, make dark
	if obj_flairgears.y > room_height {obj_flairgears.y -=0.5}
	
}

if beat > 320 { //raise monster
	if seqy > 1000 seqy-=scaryspeed;
	
	layer_sequence_y(seq, seqy)

}

if beat > 325{ //break ceiling
	with obj_dropplatform {
		vsp += grav;
		y += vsp;
		cancel = true;
	with obj_cameraman {shake = 5}

	}
}