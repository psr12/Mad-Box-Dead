/// @description on beat

	if x = target[0] and y = target[1] {
		countdown --;
	}
	
	
	if !countdown and state == 4
	{
		
		countdown = 2
		var a = target[0] 
		var b = target[1]
		
		target[0] = xstart;
		target[1] = ystart;
		
		xstart = a
		ystart = b
	}