///@desc on note hit
/*
	
*/

if state != 0 and state != 90 {exit} //if not in correct state
	//ie dying
	
	if state == 90 {
		if input_check(global.keyJump) ||
		input_check(global.keyDash) ||
		input_check(global.keyDrop) ||
		input_check(global.keyCharge) 
		{
			state=0; respawn_positioning_timer = max_respawn_positioning_timer;
			vsp=0; grav=0; hsp=0;
		}
	}
		
position_of_last_hit = [x,y];

if input_check(global.keyJump)  //jump
{ //so you can jump from poles, and slides keep momentum
	if place_meeting(x,y, obj_swingpole) getoffslide = gost; 
	if place_meeting(x,y+1, obj_slideplatform) getoffslide = 2; 
	//jumping  sets gravity to full, incase of jumping after a dash while no gravity
	if jumps == 2 {vsp = -(jumppower+charge); grav = initgrav; 
		vsliding = min( vsliding, 0); //SO SLIDES DONT DRAG YOU DOWN
		if !place_meeting(x,y-1, obj_cheese) {y--;}
				so=audio_play_sound(snd_jump,1,0)
				audio_sound_pitch(so, 1+(time)*0.05 )
				scr_changeseq(sjump, scale)
		}

	else if jumps <= 1 && homing_target { //homing attack
				if distance_to_object(homing_target) <= homing_range
				{
					homingtimer = action_time;
					dashing = 0; walking = 0;
					vsp = 0; hsp = 0; //stop movement
					var so = audio_play_sound(snd_lockon,1,0);
					audio_sound_pitch(so, 1+(time)*0.01 )
					scr_changeseq(sspin, scale)
					//exit; //so walljump doesn't go off
				}
		}
	else if jumps == 1 { //doublejump
		vsp = -(doublejumppower+charge); grav = 0; 
			if !place_meeting(x,y-1, obj_cheese) {y--;} //come off floor first
			so=audio_play_sound(snd_jump,1,0)
			audio_sound_pitch(so, 0.90+(time)*0.05 )
			scr_changeseq(sspin, scale)
	}
		
	if jumps != 2{ //walljumps, can't walljump on first jump
		if place_meeting(x+1, y, obj_cheese) && facing !=0 //wall on right, holding 
		{
			jumps++; dashing = -dashpower-5;
			vsp = -jumppower*0.9-charge; grav = initgrav; 
			timer=10;
			scr_changeseq(swalljump,scale)
			wjtimer = init_wjtimer;
			layer_sequence_xscale(seq, scale) //face left (walljump seq is backwards...)
				charges = 1;
			hsliding = 0; vsliding = 0;

		}
		if place_meeting(x-1, y, obj_cheese) && facing !=0 //wall on left, holding 
		{
			jumps++; dashing = dashpower+5;
			vsp = -jumppower*0.9-charge; grav = initgrav; 
			timer=10;
			scr_changeseq(swalljump,scale)
			wjtimer = init_wjtimer;
			layer_sequence_xscale(seq, -scale) //face right
				charges = 1;
			hsliding = 0; vsliding = 0;
		}
	}
	jumps--;
	charge = 0;
	if place_meeting(x,y, obj_swingpole)
	{ vsp = -jumppower*1.4; }
}

if input_check(global.keyDrop) //drop
{
	vsp = jumppower*4; //always
	dashing = 0; //stop horizontal momentum
	so=audio_play_sound(snd_jump,1,0)
	audio_sound_pitch(so, 1+(time)*0.05 )
	homingtimer = 0 //cancel homing
	if place_meeting(x,y+1, obj_cheese) {scr_changeseq(sduck, scale)}
	else {
		dropcounter++; if dropcounter > ds_list_size(drop_animation_list)-1 dropcounter = 0;
		else scr_changeseq(sdrop, scale)
	}
	//var pspd = 0
	//part_type_speed(part_lines,pspd,pspd, -0.1, 0)
	//part_type_orientation(part_lines, 90,90,0,0,false)
	//part_particles_create(partsys, x+30, y, part_lines, 1)
	//part_particles_create(partsys, x, y, part_lines, 1)
	//part_particles_create(partsys, x-30, y, part_lines, 1)
	if place_meeting(x,y, obj_swingpole)
	{ getoffslide = gost; vsp = jumppower*4; }
}


if input_check(global.keyCharge)//charge
{	
	{
	so=audio_play_sound(snd_charge,1,0)
	audio_sound_pitch(so, 1+(time)*0.05 )
	scr_changeseq(scharge, scale)
	if charge == chargepower {layer_sequence_headpos(seq, 20)}
	charge = chargepower
	}

	if charges == 1{ charges--;
			chargetimer = init_chargetimer;
	grav = 0; timer=init_chargetimer}
	
	var screw = instance_place(x,y+2, obj_screw)
	if screw
	{
		screw.justhit = true;
	}

}

if input_check(global.keyDash) && dashes > 0 //dash
{	getoffslide = gost; //tempoirarily ignore slides
	sliding = 0; //stop slide momentum (mostly for after ramping)
	dashes--;
	dashing = (dashpower+charge*5)*wasfacing
	grav = 0; dashtimer = init_dashtimer; //stop gravity
	var so = audio_play_sound(snd_dash,1,0)
	audio_sound_pitch(so, 1+(time)*0.05 )
	if charge {play_sound(snd_chargedash,1+(time)*0.05) }
	charge = 0; vsp = 0; timer=20;
	homingtimer = 0 //cancel homing
	if !place_meeting(x,y+2, obj_cheese) {scr_changeseq(sdash, scale)} //air dash always this one
	else {
		scr_changeseq(dash_animation_list[| dash_anim_count], scale)
		dash_anim_count++; if dash_anim_count >= dash_list_length {dash_anim_count = 0} 
	}
	var pspd = (3*wasfacing)
	part_type_speed(part_lines,pspd,pspd, -0.1, 0)
	part_type_orientation(part_lines, 0,0,0,0,false)
	part_particles_create(partsys, x+50*wasfacing, y-60, part_lines, 1)
	part_particles_create(partsys, x+70*wasfacing, y-20, part_lines, 1)
	part_particles_create(partsys, x+50*wasfacing, y+10, part_lines, 1)
	
	if place_meeting(x,y, obj_swingpole)
	{ dashing = dashpower*2.5*wasfacing; }
}

