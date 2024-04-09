/// @description Insert description here
// You can write your code in this editor



if state == 2 {

	matchtime--;
	if !matchtime
		{
			state++; play_sound(snd_doorslam, 1.1)
			var i = 0
			repeat(10) {instance_create(x + lengthdir_x(100, i*36), 
				y+lengthdir_y(100, i*36), obj_pickup); i++;}
		}


	if type == 1 {

		laserwait--;
		if !laserwait {
		laserwait = maxlaserwait;
		lasercounter--;
		lasercounter = Wrap(lasercounter, 0, 8);
		scr_makelaser(x + (lasercounter-maxlasercounter/2)*laserdist, 
		
		y, 2, 0, 3, 1)
		}

	}
	
	if type == 2 {

		laserwait--;
		if !laserwait {
		laserwait = maxlaserwait;
		lasercounter--;
		lasercounter = Wrap(lasercounter, 0, 8);
		scr_makelaser(x, y, 2, 45*lasercounter, 3, 1)
		}

	}






}




