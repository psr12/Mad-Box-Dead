/// @description Insert description here
// You can write your code in this editor


if state == 0 {
	if place_meeting(x, y, obj_MadSquare) {
		state++; play_sound(snd_doorslam, 1)
		
		obj_cameraman.targetzoom = 2;
		obj_cameraman.camlock = true;
		
	}
}

if state == 1 {
	var maxtime = 60;
	with obj_cagewall {y = lerp(y, ystart+sprite_height, 0.2) }
	timer++;
	if timer > maxtime { state++; timer = 0; }
	obj_cameraman.x = lerp(obj_cameraman.x, x, 0.3)
	obj_cameraman.y = lerp(obj_cameraman.y, y, 0.3)
}

if state == 2 {


}


if state == 3 {
	var maxtime = 60;
	with obj_cagewall {y = lerp(y, ystart, 0.5) }
	timer++;
	if timer > maxtime { state++; timer = 0; 
				//obj_cameraman.targetzoom = 1.5;
			obj_cameraman.camlock = false;
		}
}







