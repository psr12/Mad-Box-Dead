/// @description Insert description here
// You can write your code in this editor


//draw darkness
draw_sprite_ext(spr_deathplaneAura, 0, x, y, 
image_xscale, image_yscale, image_angle, image_blend, image_alpha)


//draw bounding box
if instance_exists(obj_MadSquare)
{
	
	if obj_MadSquare.state != 0{
		draw_self();
	}
	
}

