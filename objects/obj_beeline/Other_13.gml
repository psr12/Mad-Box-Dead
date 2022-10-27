/// @description 'step'
// Inherit the parent event
event_inherited();
if instance_exists(obj_MadSquare)
{	
		if active and obj_MadSquare.state == 0 {
		if !glitchy main_rot = point_direction(x,y, obj_MadSquare.x, obj_MadSquare.y) + 270;
	
			if !glitchy
			{
				x += lengthdir_x(movethis, main_rot-270)
				y += lengthdir_y(movethis, main_rot-270)
				}
		}
	else if distance_to_object(obj_MadSquare) < range 
	and !active {active = true; glitchy_alarm = glitchy_alarm_max}
	
	//out of aggro range
	if active and distance_to_object(obj_MadSquare) > range*6 {active = false;}
}

image_angle = main_rot;

if glitchy glitchy_alarm--;
if glitchy_alarm < 0 and active and obj_MadSquare.state == 0 {
		glitchy_alarm = glitchy_alarm_max;
	
			main_rot = point_direction(x,y, obj_MadSquare.x, obj_MadSquare.y) + 270
				+ random(30)-30
			image_alpha = random(1)+0.5
			var ran = random(205) + 30
				x += lengthdir_x(ran, main_rot-270)
				y += lengthdir_y(ran, main_rot-270)
	}

palarm--;
if palarm <= 0 {
	

part_type_size(particle, (abs(image_xscale)+abs(image_yscale))/2, 
(abs(image_xscale)+abs(image_yscale))/2, -0.05, 0.1)

part_particles_create(global.partsys, x + random(sprite_width/2)*choose(-1, 1), 
y + random(sprite_height/2)*choose(-1, 1),
particle, 1)

palarm = ptime;
}