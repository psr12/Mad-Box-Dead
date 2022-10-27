/// @description 'step'

image_xscale = lerp(image_xscale, initxscale, 0.2)
image_yscale = lerp(image_yscale, inityscale, 0.2)



if instance_exists(obj_MadSquare)
{
	if distance_to_object(obj_MadSquare) < 100 
	and obj_MadSquare.homingtimer 
	and obj_MadSquare.homing_target == id
	{
		instance_destroy();
		var dir = point_direction(obj_MadSquare.x, obj_MadSquare.y, x,y)
		
		obj_MadSquare.dashing = lengthdir_x(distance_to_object(obj_MadSquare), dir)
		obj_MadSquare.vsp = lengthdir_y(distance_to_object(obj_MadSquare)*.6, dir)
		obj_MadSquare.homingtimer = 0;
		//obj_MadSquare.grav = 0;
	}
}