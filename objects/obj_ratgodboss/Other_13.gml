/// @description step

squishsin += squishspeed;
var scine = sin(squishsin)
image_yscale = 1 + scine*squishamt
image_xscale = 1 - scine*squishamt


// Inherit the parent event
event_inherited();

var beat = false;
if imonbeat {beat = true; imonbeat = false; }

part_particles_create(global.partsys, x + random(sprite_width/2)*choose(-1, 1), 
y + random(sprite_height/2)*choose(-1, 1),
particle, 1)

		var radi = 300; //hole particles


switch state {
	
	
case 19: //fill attack list
	squishamt = 0.02
	squishspeed = 0.1;
	switch phase {
		case 1: ds_list_add(attacklist, 40, 60, 110) //nodes missiles lasers, no addons
			ds_list_shuffle(attacklist)
		break;
		case 2: ds_list_add(attacklist, 40, 60, 110) //nodes missiles lasers, addons
			ds_list_shuffle(attacklist)
		break;
		case 3: ds_list_add(attacklist, 40, 60) //hard nodes, misslies, lasers
			ds_list_shuffle(attacklist)
			ds_list_add(attacklist, 419) //end with megalaser
		break;
	}
		instance_destroy(obj_artyboost)
		sprite_index = rg_ratgod1

	attacksbeforevuln = max_attacksbeforevuln;
	state++;
break;
case 20: //	pick attack
	
	if phase == 1 {
		goto = attacklist[| 0];
		ds_list_delete(attacklist, 0);
	}
		
	if phase == 2 {
		
		goto = attacklist[| 0];
		ds_list_delete(attacklist, 0);

		if goto == 110 addition = choose(2,3) //no laser divider if lasers
			else addition = choose(1, 2, 3); 
	}
	
	if phase == 3 {
		goto = attacklist[| 0];
		ds_list_delete(attacklist, 0);

		if goto == 419 addition = 0 //no addons if megalaser
			else addition = choose(1, 2, 3); 
	}
				
		if attacksbeforevuln <= 0 {state = 2400}
		else 	state++;
		
		//state = 40; //nodes
		//state = 60; //micromissiles
		//state = 110; //lasers
		
		//state = 419; //big laser
		//state = 2400; //vuln
	break;
case 21:
	switch addition {
		case 1: var addinst = scr_makelaser(room_width/2, 100, 9999, 0, 4, 3); //make divider laser down the middle
		break;
		case 2: var addinst = instance_create(room_width/2, room_height/2, obj_wind) //wind left
			with addinst {spd = 3; image_angle = 180; image_scale(90)}
		break;
		case 3: var addinst = instance_create(room_width/2, room_height/2, obj_wind) //wind right
			with addinst {spd = 3; image_angle = 0; image_scale(90)}

		break;
	}
	state = goto;
	break;
break;

#region nodes
	case 40: //nodes
		timer++;
			x = lerp(x, room_width/2, 0.3);
			y = lerp(y, room_height/2-70, 0.3);
		if timer >= 30 {
						x = room_width/2
			y = room_height/2-70
		//var newnode = instance_create(x, y, obj_node)
		//		ds_list_add(nodelist, newnode)
		//var newnode = instance_create(x, y, obj_node)
		//		ds_list_add(nodelist, newnode)
		//var newnode = instance_create(x, y, obj_node)
		//		ds_list_add(nodelist, newnode)
		//var newnode = instance_create(x, y, obj_node)
		//		ds_list_add(nodelist, newnode)
		if phase < 3 nodepattern = nodepatternarray[ irandom(array_length(nodepatternarray)-1)  ]
		else nodepattern = nodepatternarray_hard[ irandom(array_length(nodepatternarray_hard)-1)  ]
		repeat(4) {
			var newnode = instance_create(x, y, obj_node)
				ds_list_add(nodelist, newnode) }
			state=45; timer=0;
		}
	
	case 45: //send nodes out
		timer+=3; var wait = 60*3;
			var i = 0;
			var ammount = ds_list_size(nodelist) 
			var slice = 360/ammount;
		
			var nodedistance = 100;//hover
				var ndis = 130; //actual

		repeat(ammount) {
			var node = nodelist[| i]
			node.x = lerp(node.x, x+lengthdir_x(nodedistance*2, slice*i-timer), 0.3 )
			node.y = lerp(node.y, y+lengthdir_y(nodedistance/2, slice*i-timer), 0.3 )
			i++;
		}
	
		if timer >= wait { state = 50; timer=0; 
				play_sound(Atk_SwordSwingB, 1.2)
				nodelist[| 0].targetx = x-ndis*5
				nodelist[| 0].targety = y-ndis*2
			
				nodelist[| 1].targetx = x+ndis*5
				nodelist[| 1].targety = y-ndis*2
			
				nodelist[| 2].targetx = x-ndis*6
				nodelist[| 2].targety = y+ndis*2
			
				nodelist[| 3].targetx = x+ndis*6
				nodelist[| 3].targety = y+ndis*2
			}
		break;
	
	case 50: //pause
		timer++; if timer > 20 {state++; timer=0;}
		break;
	
	
	case 51: 
		timer++; 
		if timer >= 30  {
			if flashcount >= array_length(nodepattern) {timer=0; state = 53; flashcount = 0; 
				var n1 = nodelist[| nodepattern[0] ]
				//partman = instance_create(n1.x, n1.y, obj_makesquares)	
				}
			else {var noder = nodelist[| nodepattern[flashcount] ]
				noder.flash = true; flashcount++;
				noder.scale = 2.5;
				}
			timer=0;
		}
		break;
	case 53: //wait for nodes to zap
		timer++;
		if timer >= 30 and beat{
		
			if flashcount > array_length(nodepattern)-2 {state = 54; //instance_destroy(partman)
				flashcount = 0; timer=0;	}
			else { 
				var patnum = nodepattern[flashcount]
				var patnum2 = nodepattern[flashcount+1]
				var n1 = nodelist[| patnum]
				var n2 = nodelist[| patnum2]
			
				if collision_line(n1.x, n1.y, n2.x, n2.y, obj_MadSquare, false, false)
				{ scr_killmadrat() }
			
				//partman.targetx = n2.x
				//partman.targety = n2.y
			
				var dis = point_distance(n1.x, n1.y, n2.x, n2.y)
				var dir = point_direction(n1.x, n1.y, n2.x, n2.y)
				var partdist = 12
				var num = dis/partdist // #2 = dist between particles
				var i = 0;
			
				repeat(num) {
					part_particles_create(global.partsys, n1.x+lengthdir_x(partdist*i, dir), 
					n1.y+lengthdir_y(partdist*i, dir), global.part_laserline, 1 );
					i++;
				}
			
				play_sound(Cmn_EnergyRelease, 1.5 + n1.x*0.001+ n1.y*0.001)
				n1.flash = true;
				n1.flashsound = false;
				flashcount++;
			}
			timer=0;
		}
	break;
	
	case 54: //recall nodes
		timer++;
		obj_node.targetx = x; 
		obj_node.targety = y;
			//	obj_node.x = lerp(obj_node.x, x, 0.3 )
			//obj_node.y = lerp(obj_node.y, y, 0.3 )
		if timer > 30 {state++; instance_destroy(obj_node);
			ds_list_clear(nodelist) }
	break;
	
		case 55: state = 999; break; //finish
#endregion nodes

#region missiles

	case 60: x = lerp(x, room_width/2, 0.2);
	y = lerp(y, 100, 0.2);
	timer++; if timer > 20 {state=70; timer=0;
		x = room_width/2
			y = 100
		}
		break;

	case 70: //spawn missiles
		var missilemax = 6;
		var missiletime = 20;
		var missiledist = 200;
		var count = flashcount - missilemax/2
		timer++;
		if timer > missiletime {
			var missile = instance_create(x + missiledist*(count),
			y, obj_missile)
			if count >=0 missile.x += missiledist; //no missile directly overtop rg
			ds_list_add(nodelist, missile)
			flashcount++; //number of missiles spawned	
			if flashcount >= missilemax {state++; timer=0; flashcount=0;}
			timer=0;
		}

	break;

	case 71: //set off missiles
		timer++;
		if timer > 30 {
			if flashcount >= ds_list_size(nodelist) {state++; timer=0; flashcount=0;} 
			else {
				nodelist[| flashcount].state++;
				flashcount++;
				play_sound(snd_falling, 1);
				timer=0;
			}
		}
		
		break;

	case 72: //wait
		if !instance_exists(obj_missile) {state++;
			timer = 0; ds_list_clear(nodelist);
		}
	break;

	case 73: //reset
		state = 999;
	break;
#endregion missiles

#region sewer lasers
	case 110: x = lerp(x, room_width/2, 0.3);
	y = lerp(y, 200, 0.2);
	timer++; if timer > 40 {state=111; timer=0; }
		break;

	case 111: //select variant
		state = 120;
		break;
	
	case 120: //three, three, three
		timer++;
		if timer > 30  {
			var xarray = [x-600, x, x + 600, -1,  x-900, x, x + 900, -1, x-900, x, x + 900]
			var rarray = [0, 0, 0, -1, 45, 45, 45, -1, 135, 135, 135]
			if flashcount >= array_length(rarray) {state = 180; timer=0; flashcount=0; }
			else if rarray[flashcount] == -1 {timer = -30; flashcount++; }
				else {
			scr_makelaser(xarray[flashcount mod array_length(xarray)], y, 4, 
			rarray[flashcount], 3, 2)
			flashcount++; timer=0;}
		}
		break;
		
		
		case 180: //end lasers
			timer++; if timer > 120 {state = 999; timer=0;}
		break;
	
#endregion sewer lasers

#region big laser
	
	case 419: flashcount = choose(-1, 0, 1); 
		state++; timer=0;
		break;
	
	case 420: //get in pos
	timer++;
	obj_recorder.corner_heart_overwrite = csh_thinking;
	x = lerp(x, room_width/2+500*flashcount, 0.5);
	y = lerp(y, -300, 0.2);
	obj_cameraman.yoffset = lerp(obj_cameraman.yoffset, normaloffset-100, 0.2)
	obj_cameraman.targetzoom = 1.8
		if timer >= 40 {state++; timer=60;
			play_sound(Cmn_EnergyCharge, 0.8);
			flashcount = 0;
			}
	break;
		
	case 421: //'charge up'
		timer++;
		if timer > 20 {
			flashcount++;
			if flashcount < 9 instance_create(x, y+100, obj_chargecircle)
			timer=0;

			if flashcount == 3{ //arty realizes
			obj_recorder.corner_heart_overwrite = ch_shocked;}
			
			if flashcount == 6 { //arty appears
			obj_recorder.corner_heart_overwrite = seq_blank;
			instance_create(700, 350, obj_blocklaser) }
			
			if flashcount >= 10 { //fire
				timer=0; state++; 
				play_sound(Atk_GuillotineBeam, 0.8);
			}
		}
	break;
	
	case 422: //firing beam
		timer++;
		scr_shakecamera(20)
		if timer > 240 {timer=0; state++; flashcount=0;}
		instance_create(x, y-200, obj_vulnlaser);
	break;
	
	case 423: //finish
		timer++; if timer >= 180 {state++; timer=0}
	break;
	
	
	case 424: //finish2

		obj_cameraman.yoffset = lerp(obj_cameraman.yoffset, normaloffset, 0.2)
		obj_cameraman.targetzoom = lerp(obj_cameraman.targetzoom, 1.2, 0.2)

		timer++; if timer >= 60 {state = 999;
			instance_destroy(obj_seqdummy)
			instance_destroy(obj_blocklaser)
			obj_recorder.corner_heart_overwrite = 0;

			}
	break;
		
#endregion

#region become vulnerable
	case 2400:
		x = lerp(x, room_width/2, 0.5);
		y = lerp(y, 0, 0.2);
		
		squishamt = 0.1;
		squishspeed = 0.05;
		
		obj_cameraman.yoffset = lerp(obj_cameraman.yoffset, normaloffset, 0.2)
		obj_cameraman.targetzoom = 1.5
		timer++;
		sprite_index = rg_ratgod6
		if timer > 80 {timer=0; state++; 
				instance_create(x, y, obj_tunevulnRG)
				var face = choose(1, -1)
				instance_create(x + 400*face, y+200, obj_artyboost);
			}
	break;
	case 2401: //be vulnerable
		if timer > 600 //didn't get hit in time
		{timer=0; state=19; hp=3 }
		timer++;
	break;
	
	case 2402: //been hit
		sprite_index = rg_ratgod3;
		hp--;
		if hp<=0 { state = 2500; } //if phase change
		else {state++; }
	break;
	
	case 2403: //cooldown from hit
			part_particles_create(global.partsys, x+random(radi)-radi/2,
			y+random(radi)-radi/2, global.part_hole, 1)
		timer++; if timer > 240 {state = 19; timer=0; //return to 'fill list'
			}
	break;

#endregion

#region phase change obstacles
	
	case 2500://phase change wheeeee
		play_sound( Cmn_MagicSquare, 1.5)
		state++
	break;
	
	case 2501://dying
		part_particles_create(global.partsys, x+random(radi)-radi/2,
			y+random(radi)-radi/2, global.part_hole, 1)
				timer++;
		if timer > 120*3 {timer=0; state=2600;}
	break;
	
	case 2600: //make course, reset arty
		part_particles_create(global.partsys, x, y, global.part_sparks, 20)
		var courseselect = seq_obstaclecourse1
		switch phase { 
			case 2: courseselect = seq_obstaclecourse2 break;
			case 3: courseselect = seq_obstaclecourse3 break;
		}

	 {seq = layer_sequence_create(layer, x, y, courseselect)
		state++}
	break;
	
	case 2601: //move to end of course
			x = ph_8.x;
			y = ph_8.y;
			instance_create(x, y, obj_tunevulnRG)
			state++;
		break;
	case 2602:  //wait for mad rat
	if phase == 3 {
		obj_tunevulnRG.x = ph_9.x
		obj_tunevulnRG.y = ph_9.y
		x = ph_9.x;
		if obj_MadSquare.y-y < 400 { //run away
			y = Approach(y, ph_9.y, 30)
		}
	}
		
	break;
	case 2603: //got hit at end
			part_particles_create(global.partsys, x, y, global.part_sparks, 20)

			
			if phase >= 3{ //all dead
				with obj_recorder {event_user(8); }
				play_sound(Atk_Tempest, 1)
				var safety = instance_create(x, y+400, obj_cheese);
				safety.image_xscale = 40;
				scr_shakecamera(50)
				state = 99999; //die
				layer_background_visible(layer_get_id("Background"), false )
			}
			else { //not dead yet
				play_sound(Hit_Shock, 1)
				state++;	hp = 3;		phase++;
				x = -999;
			}
			layer_sequence_destroy(seq)
			instance_destroy(obj_artyboost)
			instance_destroy(obj_balloon)
			var fix = instance_create(room_width/2, room_height/2, obj_camerafix)
			with fix {image_scale(9) }
	break;
	
	case 2604: //wait for falling rat
		timer++;
		if timer > 120*1.5 {timer=0; state = 19; }
	break;
	
#endregion phase change obstacles

case 999: //finish an attack, placeholder?
	state = 1200;
	attacksbeforevuln--;
	telelist = ds_list_create()
	ds_list_add(telelist, ph_1, ph_2, ph_3, ph_4)
	ds_list_shuffle(telelist)
	instance_destroy(obj_artyboost)
	instance_destroy(obj_sewerlaser)
	instance_destroy(obj_wind)
	instance_destroy(obj_balloon)
	sprite_index = rg_ratgod1
	instance_destroy(obj_tunevulnRG)
break;

case 1200: //random teles
	timer++;
	if timer > 40 {
	flashcount++;
	if flashcount > 3 {
		state=20; 
		timer=0;flashcount=0;}
		else {
			part_particles_create(global.partsys, x, y, global.part_sparks, 20)
			var loc = telelist[| 0]
			x = loc.x; y = loc.y;
			ds_list_delete(telelist, 0)
			play_sound(telesound,0.95+random(0.1))
			part_particles_create(global.partsys, x, y, global.part_sparks, 20)
			timer=0;
		}
	}
break;

	case 99999: //dying, outro
			part_particles_create(global.partsys, x+random(radi)-radi/2,
			y+random(radi)-radi/2, global.part_hole, 1)
		break;

}
	
	
	
	




