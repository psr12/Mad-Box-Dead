/// @description 'step'
// Inherit the parent event
event_inherited();

	hsp = lerp(hsp, 0, 0.1)
	
if state == 0 { //idle
		facing = 1; attacktimer = 0;
		if place_meeting(x,y+1, obj_cheese) and abs(hsp) < 0.1 and !stopped {
			stopped = true; scr_changeseq(sq_mb_idle, scale)
		}
		if abs(hsp) > 0.1 stopped = false
		
	walkcooldown-= random(3);
	var dist_from_offset = (x-rp_leader.x) - offset
	if !walkcooldown and abs(dist_from_offset) > 10+random(200)  {
			
			hsp = sign(dist_from_offset) * unlerp(0, 100, abs(dist_from_offset)) * -5
			walkcooldown = walkcooldownmax;
						scr_changeseq(sq_mb_walk, scale)

	}
	
}

if state == 1 //march
{
 //nothing? march is just idle, move up leader		
}

if state == 2 //attack
{
	var target = instance_nearest(x, y, rp_enemy)
	if target == noone {state = 0 exit}
	var targ_dist = point_distance(x, y, target.x, target.y)
	if targ_dist < 1100
	{
		 scr_changeseq(sq_mb_walk, scale)
		state = 2.1; attacktimer = 0;
	}
	else {state = 0; }
}
if state == 2.1 {
	var target = instance_nearest(x, y, rp_enemy)
	if target == noone {state = 0 exit}
	var targ_dist = distance_to_object(rp_enemy)
	hsp = sign(target.x-x) * 5;
	if targ_dist < 50
	{
		hsp = 0; scr_changeseq(sq_mb_swordend, scale)
		state = 2.2;
	}
}
if state == 2.2 {
	attacktimer++;
	
	var target = instance_nearest(x, y, rp_enemy)
	if target == noone {state = 0 exit}
	var targ_dist = distance_to_object(rp_enemy)
	if targ_dist > 50 {state = 2.1; scr_changeseq(sq_mb_idle, scale)}
	hsp = 0 
	if attacktimer > 5 {state = 2.3
			with target event_user(4) //hit event
			var damage = irandom_range(5,10)
			target.hp -= damage;
			var baby = instance_create(target.x, target.bbox_top, rp_damagenumber)
			baby.text = damage
			
			attacktimer = 20
			
	}
}
if state == 2.3 { 
	attacktimer--;

	if attacktimer < 0 {state = 0
	}
}

if state == 3 { //guard
	scr_changeseq(sq_mb_vuln, scale); state = 3.1
}

if state == 4 { //flee
	scr_changeseq(asq_mb_dash, scale); facing = -1; state = 4.1
}
if state == 4.1 {
	hsp = -10
	attacktimer ++
	if attacktimer > 20 {scr_changeseq(sq_mb_vuln, scale); state = 4.2 }
}
if state = 4.2 {
	hsp = zlerp(hsp, 0.2)	
}

if state = 9 { //hurt
	scr_changeseq(sq_mb_turnaround, scale)
	state = 9.1
}
if state == 9.1 {
		hsp = lerp(hsp, 0, 0.05)
		hurt_timer++;
		if hurt_timer > 90 {
			state = 0;
			scr_changeseq(sq_mb_idle, scale)
			hurt_timer = 0;
		}
}


x += hsp;

if layer_sequence_is_finished(seq) {  //if animation is finished...
	layer_sequence_headpos(seq, 0)
	}
