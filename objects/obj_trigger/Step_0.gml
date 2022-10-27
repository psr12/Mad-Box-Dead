/// @description Insert description here
// You can write your code in this editor

if victim{ if !instance_exists(victim) victim = noone}
if state == 0
{
	if mouse_check_button_pressed(mb_left)
	{
		if mouse_x == clamp(mouse_x, bbox_left, bbox_right)
		&& mouse_y == clamp(mouse_y, bbox_top, bbox_bottom) //if clicked on this
		{
			state = 1;
		}

	}
}



if state == 1
{
	victim = collision_point(mouse_x, mouse_y, all, true, true)
	if mouse_check_button_released(mb_left)
	{
		if victim == noone {paired = noone; state = 0;}
		else if victim != obj_MadSquare && victim != self
		{
			paired = 
			[victim.x, victim.y, victim.layer, object_get_name(victim.object_index), 
			victim.image_blend, victim.image_xscale, victim.image_yscale, victim.image_angle,
			sprite_get_name(victim.sprite_index)
			]
			
			//paired_inst = victim;
			
			instance_destroy(victim);
			state = 0;
		}
	}
}



if state == 10{
	
	if instance_exists(obj_MadSquare)
	{
		if place_meeting(x,y,obj_MadSquare)
		{
			if paired != noone {
				
				var wowie = instance_create_depth(paired[0], paired[1], paired[2], asset_get_index(paired[3]) )	
				wowie.image_xscale = paired[5]
				wowie.image_yscale = paired[6]
				wowie.image_angle = paired[7]
				
				state = 11;
			}
		}
	}
}






