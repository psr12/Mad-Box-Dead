/// @description Insert description here
// You can write your code in this editor


//arrow faces RIGHT
//want TOP to BOTTOM line

//var x1 = x + lengthdir_x(sprite_height/2, image_angle+90); //TOP CENTER  of box
//var y1 = y + lengthdir_y(sprite_height/2, image_angle+90) 

//var botdist = random_range(0, sprite_height)

//var x2 = x1 + lengthdir_x(botdist, image_angle+270) //random point on center line
//var y2 = y1 + lengthdir_y(botdist, image_angle+270)

//var x3 = x2 + lengthdir_x( sprite_width/2 , image_angle+180)//random point on borrom side
//var y3 = y2 + lengthdir_y( sprite_width/2, image_angle+180)

//originally, leaves were all created at the left side


		part_type_direction(global.part_leaf, image_angle, image_angle, 0, 0)
		part_type_speed(global.part_leaf, spd, spd, 0, 0)
		part_type_size(global.part_leaf, 6, 6, 0, 0);
		part_type_life(global.part_leaf, 60, 60);
		part_particles_create(global.partsys, random_range(bbox_left, bbox_right), random_range(bbox_top, bbox_bottom) ,
		global.part_leaf, 1)
		
		var area = image_xscale * image_yscale
		
	alarm[0] = 40/area + 2;