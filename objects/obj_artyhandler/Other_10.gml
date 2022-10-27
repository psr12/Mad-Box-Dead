/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();


if state == 0 {
	onbeat++;
	switch onbeat {
		case 4:
		scr_changedummyseq(0, csh_idle, csh_idle, 1, 6)
		scr_changeheartface(h_face8)
			obj_recorder.corner_heart_overwrite = csh_uploading;
			break;
	
		case 8: obj_recorder.corner_heart_overwrite = seq_blank;
			break;
	
		case 12: obj_monitor.started = true;
			break;
	
	
		case 18: 
			obj_seqdummy.shake = true;
			scr_changedummyseq(0, csh_flex, csh_flex2,1, 8)
				scr_changeheartface(h_face8)

			var clawy = 400
			var rclawx = 2300
			var lclawx = -200
			rclaw = instance_create_layer(rclawx, clawy, "claws", obj_artyclaw);
			rballs = instance_create_layer(rclawx, clawy, "balls", obj_artyclawarm);
			rballs.target = rclaw;
		
			lclaw = instance_create_layer(lclawx, clawy, "claws", obj_artyclaw);
			lballs = instance_create_layer(lclawx, clawy, "balls", obj_artyclawarm);
			lballs.target = lclaw
		
			startclaw = true;
			onbeat = 0;
			state = 1; //idle, select attack
			
			obj_monitor.started = true; //remove later, (doesn't matter?)
			break;

	
	}
} //end of state 0 intro

if state == 1 { //pick attack
		onbeat = 0;
		var attack = 1
		if scalpelphase >= 2 {attack = 2; } //use scalpels every 2 hits
		if beenhit > healthpoints {attack = 3} //finale
		
		if attack == 1 { //buzzsaw and slams
			state = 11 
			scr_changedummyseq(0, csh_pointside, csh_pointside, 1, 4)
			scr_changeheartface(h_face8)
			obj_monitor.holdspace = true;
		}
		
		if attack == 2 { // scalpels
			state = 21
			scr_changedummyseq(0, csh_nuhuh, csh_nuhuh, 1, 6)
			scr_changeheartface(h_face4)
			obj_monitor.holdspace = false;
			scr_artymoves(lclaw, ph_1.x-500, 500, 10)
			scr_artymoves(rclaw, ph_2.x+500, 500, 10)
			obj_artyclaw.turn = 0;
		}

		if attack == 3 { //crushing walls
				scr_changedummyseq(0, csh_snap1, csh_snap2, -1, 5)
				scr_changeheartface(h_face6)
			scr_artymoves(lclaw, lwall.x, 500, 30)
			scr_artymoves(rclaw, rwall.x, 500, 30)
				state = 31;
				with lwall active = true;
			obj_artyclaw.turn = 0;
			obj_artyclaw.crush = 1;
			obj_artyclaw.hurt = 0;
		}
	
}

if state == 11 { //two claw swipes, anagry sun style, left to right > right to left
	onbeat++;
	var cspd = 0;
	var cturn = 3;
	if onbeat == 1  with lclaw { path_start(path_angrysun, cspd, path_action_stop, true)
		turn = cturn;
		with obj_artyclaw {hurt = 150;}
		}
	
	if onbeat == 3 {
		with rclaw { path_start(path_angrysun, -cspd, path_action_stop, true)
		path_position = 1; turn = -cturn }
		scr_changedummyseq(0, csh_pointside, csh_pointside, -1, 4)
		scr_changeheartface(h_face8)
	}
		
	if onbeat == 8 {rclaw.turn = 0;	lclaw.turn = 0; }
	if onbeat == 10 {state = 12; 
		scr_changedummyseq(0, csh_flex, csh_flex2, -1, 5)
		scr_changeheartface(h_face8)
		rclaw.crush = 1;	lclaw.crush = 1; 
		onbeat = 0;
		}
}

if state == 12 { //slam down, while returning claws to correct sides
	onbeat++;
	var cspd = 15;
		
	if onbeat == 1  with lclaw { path_start(path_slambackrl, cspd, path_action_stop, true)
		with obj_artyclaw {hurt = 60;}
		}
	
	if onbeat == 1 {
		with rclaw { path_start(path_slambacklr, cspd, path_action_stop, true) }
	}
	
	if onbeat == 8 {obj_monitor.holdspace = false;
			with obj_artyclaw {hurt = 0;}
			instance_create(lclaw.x, lclaw.y, obj_tunevuln)
			instance_create(rclaw.x, rclaw.y, obj_tunevuln)
		}
	if onbeat == 16 { state = 1; 
		rclaw.crush = 0;	lclaw.crush = 0; 
		scr_artyturns(lclaw, 1)
		scr_artyturns(rclaw, -1)
		with obj_artyclaw {
			var cunt = instance_place(x,y,obj_tunevuln)
			instance_destroy(cunt)
			}
		}
}
	
	
if state == 21 { //arms go out
	onbeat++;
	if onbeat == 4 {state++; onbeat = 0;
	scr_changedummyseq(0, csh_turn1, csh_turn2, 1, 4)
		with obj_artyclaw {crush = true; hurt = 50; scalpel = true;}
		}
}
if state == 22 { //wait
	onbeat++;
	if onbeat == 4 {state++; onbeat = 0;
			obj_monitor.holdspace = true;
			scr_changedummyseq(0, csh_turn3, csh_turn4, 1, 4)
			scr_changeheartface(h_face6)
			scr_artymoves(lclaw, ph_1.x, ph_1.y, 10)
			scr_artymoves(rclaw, ph_2.x, ph_2.y, 10)
		}
}
if state == 23 { //arms come back
	onbeat++;
			if onbeat == 2 {state++; onbeat = 0;
				rclaw.gethim = true;
				scr_artymoves(rclaw, obj_MadSquare.x, 400, 10)
				}
}
	
if state == 24 { //rclaw follows
	onbeat++;
			if onbeat == 4 {state++; onbeat = 0;
				if instance_exists(rclaw) {rclaw.gethim = false;
				scr_artymoves(rclaw, rclaw.x, ph_3.y, 40)}
				
					if instance_exists(lclaw) {
					lclaw.gethim = true;
					scr_artymoves(lclaw, obj_MadSquare.x, 400, 10)
					}
				}
}
if state == 25 { //rclaw drops, lclaw follows
	onbeat++;
			if onbeat == 2 { //leave scalpel
				var bab = instance_create(rclaw.x, rclaw.y, obj_scalpelproj)
				with bab {image_scale(3); }
				with rclaw {hurt = 0; crush = 0; scalpel = false;}
				scr_artymoves(rclaw, ph_2.x, ph_2.y, 30)	
			}
			if onbeat == 4 {state++; onbeat = 0;
				lclaw.gethim = false;
				scr_artymoves(lclaw, lclaw.x, ph_3.y, 40)

				}
}

if state == 26 { //lclaw drops, waiting for return
	onbeat++;
			if onbeat == 2 { //leave scalpel
				var bab = instance_create(lclaw.x, lclaw.y, obj_scalpelproj)
				with bab image_scale(3);
				with lclaw {hurt = 0; crush = 0; scalpel = false;}
				scr_artymoves(lclaw, ph_1.x, ph_1.y, 30)	
			}
			if onbeat == 4 {state = 1; onbeat = 0;
				scalpelphase = 0;
				}
}
	
	
if state == 31 { //walls are closing in now
			scr_artymoves(lclaw, lwall.x, 500, 30)
			scr_artymoves(rclaw, rwall.x, 500, 30)
	if lwall.x == lwall.target.x {state++;
		scr_artyturns(rclaw, 1)
		rwall.active = true
		scr_changedummyseq(0, csh_snap1, csh_snap2, 1, 5)
	}
}
if state == 32 {
			scr_artymoves(lclaw, lwall.x, 500, 30)
			scr_artymoves(rclaw, rwall.x, 500, 30)
	if rwall.x == rwall.target.x {state++;
		lwall.target = ph_6;
		lwall.spd = 20;
		scr_changedummyseq(0, csh_flex, csh_flex2, -1, 5)
	}
}
if state == 33 {
			scr_artymoves(lclaw, lwall.x, 500, 30)
			scr_artymoves(rclaw, rwall.x, 500, 30)
	if lwall.x == lwall.target.x {state++;
		rwall.target = ph_7;
		rwall.spd = 20
	}
}


if state == 34 { //after final wall movement
	onbeat++;
				scr_artymoves(lclaw, lwall.x, 500, 30)
			scr_artymoves(rclaw, rwall.x, 500, 30)
	if onbeat == 20 {scr_changeheartface(h_face1)
	}
	if onbeat == 30 {
				scr_changedummyseq(0, csh_idle)
		scr_changeheartface(h_face3)
	}
	if onbeat == 40 {
				scr_changedummyseq(0, csh_crying, csh_idle)
	}
	
	if onbeat > 100 {
		with obj_recorder event_user(8)
	}
}

