/// @description step
event_inherited();


if state < max_wait - active_time  image_alpha = Approach(image_alpha, 0, 0.05)

if state >= max_wait - active_time { //inside active time
	if place_meeting(x,y,obj_MadSquare)
	{
		scr_killmadrat()
		if obj_MadSquare.state == 0 and !instance_exists(obj_talon) {
				var baby = instance_create(obj_MadSquare.x, obj_MadSquare.y-100, obj_talon)
			with baby{image_scale(3); depth -= 300;		}
		}
	}
}

