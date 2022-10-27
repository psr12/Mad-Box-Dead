///@desc step sets this off

//battery animation
battery_bulge = Approach(battery_bulge, 0, 0.02);
battery_charge_showing = Approach(battery_charge_showing, battery_charge, 1);

//check of left/right input
if global.methodOfInput == "KEYBOARD" facing = -input_check(global.keyLeft) + input_check(global.keyRight) 
else facing = -input_check(global.keyLeft_gp) + input_check(global.keyRight_gp) +
round(gamepad_axis_value(global.activeController, gp_axislh)) + round(gamepad_axis_value(global.activeController, gp_axisrh))

//facing = currently held direction
walking = walkpower*facing; //walking = added to hsp
if facing != 0 {wasfacing = facing; howsthat = false} //wasfacing = last direction input

if state == 0 {
if (place_meeting(x,y+1, obj_cheese) and vsp >= 0)//if touching ground, refresh jumps and dashes
or place_meeting(x,y, obj_jumpywater)
//or place_meeting(x,y, obj_wind)
{
	jumps = 2;
	dashes = 1;
	charges = 1;
	hsliding = lerp(hsliding, 0, 0.1) //sliding stop very quickly on land
	didyoujustdroponanenemy = false; //for stylish animations
	
	gustv = 0; //so you can land on platforms in L13
	
}

if ( (place_meeting(x,y, obj_enemy) and !obj_recorder.opArray2d[2][2] ) //not invincible
|| (battery_charge_showing <= 0) and obj_recorder.opArray2d[2][3]  ) //timer on and out
|| (!enemy_collision_timer and !obj_recorder.opArray2d[2][2]) //some other reason, (sewerhit)
{
	enemy_collision_timer--;
	if !enemy_collision_timer {state = 86;}
} else {enemy_collision_timer = max_enemy_collision_timer;} //reset if not touching

//before collision
timer= Approach(timer, 0, 1); 
if !timer {grav = lerp(grav, initgrav, slowby) } //gravity is on if !timer
else {grav = lerp(grav, 0, slowby) } //if timer is positive, reduce gravity to 0 slowly

//collision ect
vsp += grav;

if input_check(global.keyDown) 
{ if vsp < -jumppower/2{vsp=0} //down stops a jump
	timer=0; //turn gravity on with down
}
if dashtimer dashtimer--;
dashing = lerp(dashing, 0, slowby) //dash power reduces rapidly
hsliding = lerp(hsliding, 0, 0.01) //dash power reduces rapidly
vsliding = lerp(vsliding, 0, 0.01) //dash power reduces rapidly

if abs(hsliding) < 1 hsliding = 0; //because its a lerp...
if abs(vsliding) < 1 vsliding = 0; //because its a lerp...
if abs(dashing) < 1 dashing = 0; //because its a lerp...

if getoffslide { if getoffslide > 2 hsliding = 0; 
	vsliding = 0; angel = 0;}
else if wasfacing != sign(dashing) && (dashtimer) //pushing opposite direction stops a dash
	{dashing = lerp(dashing,0,0.8); timer=0; dashtimer=0;
		scr_changeseq(sspin,scale) } //

hsp = walking + dashing + hsliding + gusth; //hsp is only based on these two

//homing attack targeting
if jumps <= 1
{
	if instance_nearest(x,y, obj_canhit) != homing_target //switch target
		{	
			homing_target = instance_nearest(x,y, obj_canhit)
			if distance_to_object(homing_target) <= homing_range
			{
				var so = audio_play_sound(snd_lockon2,1,0);
				audio_sound_pitch(so, 1+(time)*0.01 )
			}
			else homing_target = noone;
		}
}
else {homing_target = noone;} //remove target


if homing_target && homingtimer //homing attack
{ 
	homingtimer--;
	hsp = (homing_target.x-x)*0.2 //zoom towards target
	vsp = ((homing_target.y-(homing_target.sprite_height/4) )-y) *0.2
	if distance_to_object(homing_target) < 5 //reached target 
	{
		//x = homing_target.x
		//y = homing_target.y
		dashes = 1; jumps = 1; //sliight refresh
		charges = 1;
		vsp = -doublejumppower; //bounce up
		homingtimer = 0;
		with homing_target {event_user(4)} //set off their death event?
		homing_target = noone; //clear targeting
		
	}
	enemy_collision_timer = max_enemy_collision_timer*4;
}
//if dropping on enemy
if place_meeting(x,y,obj_canhit) && vsp >= jumppower*4 
{
	var victim = instance_place(x,y,obj_canhit)
	dashes = 1; jumps = 1; //slight refresh
	vsp = -doublejumppower; //bounce up
	with victim {event_user(4)} //set off their death event
	if didyoujustdroponanenemy {scr_changeseq(drop_animation_list[| dropcounter], scale )}
	didyoujustdroponanenemy = true;
	enemy_collision_timer = max_enemy_collision_timer*4;
}


	getoffslide--;//pause slide detection after jump or dashing
	angel = Approach(angel, 0, 5) //reset angle of seq, for slide animation
	
	
	if wjtimer wjtimer--;
if chargetimer {
	//if vsp > 0 // <<scrapped, the  0 grav from event 0 makes you move upwards too much
	vsp = lerp(vsp, 0.1, 0.3)
	chargetimer--;}
}

var final_vsp = vsp + gustv + vsliding;

if place_meeting(x,y, obj_jumpywater) {final_vsp = clamp(final_vsp, -20, 8) }

#region list collision	

var platformlist = ds_list_create();
instance_place_list(x+hsp,y, obj_cheese, platformlist, true) //check for platform, horizontally
//horizontal check goes first, because can influence vsp w/ wall bounce
while ds_list_size(platformlist) > 0 //horizontal collision
{
	var plat = platformlist[| 0]; 
	if plat.object_index != obj_oneway //slope check
	{
		var stepup = 0; //check for space above wall
		while (place_meeting(x+hsp, y-stepup, obj_cheese) && stepup < sprite_height/3) stepup+=5;
	
		if place_meeting(x+hsp,y-stepup, obj_cheese) //check again, if can't vault wall
		{
			while !place_meeting(x+sign(hsp),y, obj_cheese)
			{
				x += sign(hsp)
			}
			if dashtimer > 10 {dashing = dashpower*-sign(hsp) *0.5; //bounce off walls at the start of a dash
				final_vsp = -jumppower*0.8; dashtimer = 0; grav = initgrav; timer = 0;
				vsp = final_vsp;
				scr_changeseq(spush,scale)
				}
			hsp = 0; 
		}
		else //there is space, above the wall
		{		
			y -= stepup; //move up, if there is space 10 pixels above where moving
		}
	}
	ds_list_delete(platformlist, 0)
}
x += ( hsp )

if !place_meeting(x,y+1, obj_cheese) && final_vsp >= 0 //check under character, for snapping to ground
{
	var down = 0; //check for ground
	while !place_meeting(x+hsp, y+down+1, obj_cheese) && down < sprite_height/3  {down++;}
	
	if place_meeting(x+hsp,y+down+1, obj_cheese) //if there is ground below...
	{
		y+=down; //move down
		//vsp=0;
		//final_vsp=0;
	}
}

if place_meeting(x,y+final_vsp, obj_cheese) //vertical collision
{
	instance_place_list(x,y+final_vsp, obj_cheese, platformlist, true)
	while ds_list_size(platformlist) > 0 {
		plat = platformlist[| 0];
		//if !getoffslide && plat.object_index == obj_slideplatform
		//{	
		//	var slide = plat;
		//	var check = slide.image_angle
		//	var snapmax = 100; // max distance to jump down
		//	var snapdown = snapmax; //how far to jump down, increments by 1 per loop
		//	if slide{
		//		var side = slide.top;
		//		if place_meeting(x, y+snapmax, slide) 
		//		{
		//			var slidespeed = 20; //horizontal speed of sliding
		//			if side == "yellow" slidespeed = -slidespeed;
		//			while (place_meeting(x+slidespeed, y+snapdown, obj_slideplatform) && snapdown > -snapmax) {snapdown--;}
				
		//			sliding = slidespeed;
		//			//final_vsp = snapdown*0.5; //<-- idk why, works pretty well
		//			//vsp = snapdown*0.5; //<-- idk why, works pretty well
		//			ds_list_delete(platformlist, 0)
		//			//sliding = 60;//less friction? for going off a ramp
				
		//				angel = check mod 180
		//				if angel > 90 angel -=180
		//				layer_sequence_angle(seq, angel)
					
		//			continue;
		//		}
		//	}
		//}
		
		//check for oneways around here
	 if final_vsp != 0 //if colliding with a drop or cheese platform
		{
			while !place_meeting(x,y+sign(final_vsp), obj_cheese)
			{
				y += sign(final_vsp)
			}
			final_vsp = 0; ds_list_clear(platformlist)
			vsp = 0;
		}
		ds_list_delete(platformlist, 0)
	}
}
ds_list_destroy(platformlist)
y += ( final_vsp )

//if place_meeting(x,y,obj_slideplatform) {y-=10; x+=10} //unsticking protocol, buggy...

gusth = Approach(gusth, 0, 0.2)
gustv = Approach(gustv, 0, 0.2)


#endregion

#region easy collision
/*
if place_meeting(x+hsp, y, obj_cheese)
{
	while !place_meeting(x+sign(hsp), y, obj_cheese)
	{x+=sign(hsp)}
	hsp = 0;
}
x += hsp
if place_meeting(x, y+vsp, obj_cheese)
{
	while !place_meeting(x, y+sign(vsp), obj_cheese)
	{y += sign(vsp)}
	vsp = 0;
}

y += vsp
*/
#endregion easy collision

if !getoffslide && place_meeting(x,y,obj_swingpole)
{
	var thispole = instance_place(x,y,obj_swingpole)
	x=thispole.x; y=thispole.y; final_vsp = 0; hsp = 0; dashing = 0; sliding = 0;
	vsp = 0;
	jumps = 1; //just double jump, not 2 jumps
	dashes = 1;
	charges = 1;
}



if state == 86 { //die, knockback
	scr_changeseq(sshocked1, scale)
	hsp = -wasfacing * 15;
	final_vsp = -10;
	vsp = -10;
	play_sound(snd_die, 1)
	battery_charge -= death_cost;
	enemy_collision_timer = max_enemy_collision_timer;
	state++;
	vsliding=0; hsliding=0;
	dashing = 0;
}

if state == 87 { //falling
	hsp = Approach(hsp, 0, 0.5);
	vsp = Approach(vsp, 5, 0.5);
	if hsp == 0 state++;
}
if state == 88 { //disappear
		layer_sequence_destroy(seq)
		vsp = 0; dashing = 0; sliding = 0; 
	jumps = 2;
	dashes = 1;
	charges = 1;
	sliding = lerp(sliding, 0, 0.1) //sliding stop very quickly on land
	didyoujustdroponanenemy = false; //for stylish animations
		play_sound(snd_zap, 1)
	repeat(20)
		{part_particles_create(partsys, random_range(bbox_left, bbox_right), 
			random_range(bbox_top, bbox_bottom),
			part_sparks, 1)
		}
	state++;
}
if state == 89 { //wait a bit before reappearing
	respawn_positioning_timer -= 3;
	if respawn_positioning_timer <=0 {
		if battery_charge_showing <= 0 and obj_recorder.opArray2d[2][3] //timer off
		{
			state = 404; //game over
			scr_changeseq(sgameover, scale);
		}
		else {
			respawn_positioning_timer = max_respawn_positioning_timer;
			state++; scr_changeseq(sslide, scale)
			x = position_of_last_hit[0]
			y = position_of_last_hit[1]
			if instance_exists(obj_respawnhere) {
				x = obj_respawnhere.x; y = obj_respawnhere.y;
			}
			play_sound(snd_respawn,1)
				repeat(20)
					{part_particles_create(partsys, random_range(bbox_left, bbox_right), 
						random_range(bbox_top, bbox_bottom),
						part_sparks, 1)
					}
			}
	}
}
if state == 90 { //fly around on platform
		respawn_positioning_timer --;
		if respawn_positioning_timer <= 0
		{
			state=0; respawn_positioning_timer = max_respawn_positioning_timer;
			vsp=0; grav=0; hsp=0;
		}
		vsp = (-input_check(global.keyUp) + input_check(global.keyDown) ) * 15;
		hsp = (-input_check(global.keyLeft) + input_check(global.keyRight) ) * 15;
		

}

if  state == 404 { //game over
}

	if place_meeting(x,y,obj_cheese) and state != 89 {y--}