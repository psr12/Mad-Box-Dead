/// @description 'step'

image_xscale = lerp(image_xscale, initxscale, 0.2)
image_yscale = lerp(image_yscale, inityscale, 0.2)



if instance_exists(obj_MadSquare)
{
	if distance_to_object(obj_MadSquare) < 100 
	and obj_MadSquare.homingtimer 
	and obj_MadSquare.homing_target == id
	{
		var dir = point_direction(obj_MadSquare.x, obj_MadSquare.y, x,y)
		var dist = distance_to_object(obj_MadSquare)
		x += lengthdir_x(dist, dir)
		y += lengthdir_y(dist, dir)
		//obj_MadSquare.grav = 0;
	}
}