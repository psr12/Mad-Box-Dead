/// @description 'step'

//image_xscale = scale * xscalemult
if distance_to_object(rp_leader) < 1200 init = true
if !init exit


if state == 40 and fire_fire_cooldown > 1 { //fire breathing
	fire_timer--;
	var obj = rp_fire
	if rp_handler.rain obj = rp_smoke
	if !fire_timer {	instance_create_depth(x-100*image_xscale + random(10) ,
		y-20*image_yscale + random(10), depth-1, obj)	
		fire_timer = 1;
		if rp_handler.rain  fire_timer = 4
	}
}

if flip != -8 {
	flip -= 0.2
	image_xscale = max( 0.01, abs(flip*scale) )
	if flip <= 0 sprite_index = new_sprite
	if flip <= -1 flip = -8
}
else 		image_xscale = lerp(image_xscale, scale, 0.1)

hsp = zlerp(hsp, 0.05)
if place_meeting(x, y+1, obj_cheese) hsp = zlerp(hsp, 0.15)



	vsp += grav;
	if place_meeting(x,y+vsp, obj_cheese) //vertical collision
	{
		while !place_meeting(x,y+sign(vsp), obj_cheese)
		{
			y += sign(vsp)
		}
		vsp = 0;
	}
	y += ( vsp )
	
	if place_meeting(x+hsp,y, rp_leader) //vertical collision
	{
		while !place_meeting(x+sign(hsp),y, rp_leader)
		{
			x += sign(hsp)
		}
		hsp = 0;
	}
	x += ( hsp )

if hp <= 0 {
	die_timer--;
	image_alpha = die_timer/90
	if die_timer mod 10 == 0 instance_create(x, y, rp_coin)
	if !die_timer instance_destroy()
}

