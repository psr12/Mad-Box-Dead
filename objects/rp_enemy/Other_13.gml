/// @description 'step'

// Inherit the parent event
event_inherited();

//image_xscale = scale * xscalemult
if !jump_cooldown {
		
	jump_cooldown = 2;

	if !alarm[9]  {
	hsp = -3;
	vsp = -7
	}
}

if flip != -8 {
	flip -= 0.2
	image_xscale = max( 0.01, abs(flip*scale) )
	if flip <= 0 sprite_index = new_sprite
	if flip <= -1 flip = -8
}
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
var fuckme  = 0
	if place_meeting(x+hsp,y, rp_leader) //vertical collision
	{
		while !place_meeting(x+sign(hsp),y, rp_leader) or fuckme > 10
		{
			x += sign(hsp)
			fuckme++
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