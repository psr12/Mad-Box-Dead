
			if keyboard_check_pressed(ord("C") ) and keyboard_check(vk_control) {//copy	
				ds_list_clear(copy_list); //always
				
				if baby != noone { //single target
					with baby {
					ds_list_add(other.copy_list, [x, y, layer, object_index, image_blend, image_xscale, image_yscale, image_angle, sprite_index] ) 
						}
					}
				else if ds_list_size(selected_list) > 0 {//many targets
				for (var i = 0; i < ds_list_size(selected_list); i++) 
					{ //grab the info of all selected objs
						oldb = selected_list[| i];
						with oldb {
							ds_list_add(other.copy_list, [x, y, layer, object_index, image_blend, image_xscale, image_yscale, image_angle, sprite_index] )
						}
					}
				}
			}
			if keyboard_check_pressed(ord("V") ) and keyboard_check(vk_control) { //paste
				if ds_list_size( copy_list) == 0 {state = 0; exit} //nothing was even copied, idiot
				
				var buff = 35;
				ds_list_clear(selected_list); //always
					for (var i = 0; i < ds_list_size(copy_list); i++) {
						var ar = copy_list[| i]; 
						var newb = instance_create_layer( ar[0]+buff, ar[1]+buff, ar[2], ar[3] )
								if newb newb.image_blend = ar[4]; // pass in platform color
								if newb newb.image_xscale = ar[5]; // pass in xscale
								if newb newb.image_yscale = ar[6]; // pass in yscale
								if newb newb.image_angle = ar[7]; // pass in rotation
								if newb newb.sprite_index = ar[8]; // pass in sprite
								
						ds_list_add(selected_list, newb);//add new instances to selected list
					}
					state = 2002; // "just selected many objects" state
			}
				
switch state
{
	case 0: //nothin
		if keyboard_check_pressed(vk_f1) {state = 411} //help
		if keyboard_check_pressed(vk_f2) {state = 33} //settings
		
		if keyboard_check_pressed(vk_f3) {current_asset_layer = asset_layer_over}
		if keyboard_check_pressed(vk_f4) {current_asset_layer = asset_layer_under}
		if keyboard_check_pressed(vk_f3) or keyboard_check_pressed(vk_f4) {play_sound(snd_menutick,1)}
		
		//scroll menu
		var abba = scr_detect_number_input()
		if abba
		{	abba--; //1 goes to 0
				selection = abba; 
		}

		if mouse_wheel_up() && !keyboard_check(vk_shift)
			{selection--; }
		if mouse_wheel_down() && !keyboard_check(vk_shift)
			{selection++; }
			
			var number_of_tabs = 2; // 0 = platforms, 1 = enemies, 2 = assets
		selection = clamp(selection,0,size-1)
		if keyboard_check_pressed(vk_tab) //swap menus
			{
				selection = 0;	
				onlist++;
				onlist = Wrap(onlist, 0, number_of_tabs);
				
				if onlist == 0 size = platform_list_size //platforms
				if onlist == 1 size = enemy_list_size //assets
				if onlist == 2 size = bg_tiles_list_size //assets
				
				if onlist < 2 { with obj_assetlayer {image_alpha = other.asset_transparency  }}
				else{ with obj_assetlayer {image_alpha = 1 } } 
				showmenu = 0;
			}
			

		
		if mouse_check_button_pressed(mb_left)
		{
			var object_list = ds_list_create()
			if onlist == 0 || onlist == 1 { //objects
				if onlist == 0 ds_list_copy(object_list, platform_list)
				if onlist == 1 ds_list_copy(object_list, enemy_list)
				if selection != 0 // not on move tool, create object
				{
						var objtype = object_list[| selection]
						baby = instance_create_layer(mouse_x, mouse_y, layer, objtype )
						state = 10;
						sy = mouse_y //starting y
						sx = mouse_x
						//change baby's sprite to whatever the theme's sprite is
							//if this were mario maker...

						//the three normal platforms change to white sprites
					if objtype == obj_cheese || objtype == obj_dropplatform || objtype == obj_oneway
					{baby.sprite_index = spr_squarewhite; baby.image_blend = myColor}
				}
			}
			if onlist == 2 && selection != 0 {  //assets
				var sprote = bg_tiles[| selection]
				baby = instance_create_layer(mouse_x, mouse_y, current_asset_layer, obj_assetlayer )
				baby.sprite_index = sprote;
				state = 10;
				sy = mouse_y //starting y
				sx = mouse_x
			}
		if selection == 0
			{	//check mouse pos for objects
				var valid_target = false;
				var templist = ds_list_create();
				num = collision_point_list(mouse_x, mouse_y, all, true, true, templist, false)
					if num > 0 //quick check
					{ 
						var valid_target = false;
							for (var i = 0; i < ds_list_size(templist); i++)
							{
								var victim = templist[| i];
						
								//if clicked a object, BUT NOT mad rat or triggers
								if victim.object_index == obj_trigger {exit;}
					
									//asset tab or obj tab?
									if onlist <2 { //obj tabs, if selected obj is on a list...
										if (ds_list_find_index(platform_list, victim.object_index) != -1
											or ds_list_find_index(enemy_list, victim.object_index) != -1)
											{valid_target = true;} //can proceed
									}//if on assets, and got an asset
									if onlist == 2 and victim.object_index == obj_assetlayer {valid_target = true;}
				
									if valid_target {
											state = 21; baby = victim; //go to selection state
											sx = victim.x - mouse_x //distance of obj X to the mouse
											sy = victim.y - mouse_y
											break; //break loop
										} //if valid
							} //for templist
							
							if !valid_target //all targets are invalid
							{ //go to box selection
								state = 2000; 
								sx = mouse_x; sy = mouse_y;
							}
						} //if num > 0
						else //no targets selected at all
							{ //go to box selection
								state = 2000; 
								sx = mouse_x; sy = mouse_y;
							}
			} //if selection == 0
		}//if mb_left
		
		if mouse_check_button_pressed(mb_right) //delete
		{
			state = 1000;
			deletex = mouse_x; deletey = mouse_y;
		}
		if keyboard_check_pressed(vk_space)
		{
			with obj_cheese { // apply platform opacity
				//second check so the default platforms (on the walls of custom rooms) don't go transparent
				if object_index == obj_cheese && sprite_index != spr_squaredarkyellow image_alpha = global.platformalpha;
				if object_index == obj_oneway image_alpha = global.onewayalpha;
				if object_index == obj_slideplatform image_alpha = global.slidealpha;
				} //make platforms... invisible?
			with obj_assetlayer { image_alpha = 1; }
			//scr_level_save(global.level);
			alarm[3] = 1; //have to reactivate culled objects to save level
			instance_activate_all()
			
			with obj_MadSquare{state = 0;} //start up mad rat and recorder objs
			with obj_recorder{state = 10; }
			with obj_trigger {event_user(9) } // make triggers deactivate their paired objects
			state = 99; //deactivate self
		}
		
		if keyboard_check_pressed( ord("R") ) //reset level
		{
			with obj_recorder scr_reset_level()
		}
		if keyboard_check_pressed(vk_escape) //go back to editing
		{
			
			scr_level_save(global.level);

			with obj_recorder scr_return_to_editor()
		}
		break;
		
	case 10: //just placed an object, hold lb
		
		//+1 is to avoid a /0 situation on first spawn
		var xscl = (mouse_x+1 - sx) / sprite_get_width(baby.sprite_index)
		var yscl = (mouse_y+1 - sy) / sprite_get_height(baby.sprite_index)
		
		if abs(xscl) < 0.1 xscl = 0.1*sign(xscl) //scale can't be under 0.1
		if abs(yscl) < 0.1 yscl = 0.1*sign(yscl)
		
		baby.image_xscale = xscl //apply scales
		baby.image_yscale = yscl 
		
		if keyboard_check(vk_shift){ //uniform scaling
			var biggest = max( abs(xscl), abs(yscl))
			baby.image_xscale = biggest * sign(xscl)
			baby.image_yscale = biggest * sign(yscl)
		}
		baby.x = sx + baby.sprite_width/2
		baby.y = sy + baby.sprite_height/2
		if !mouse_check_button(mb_left) //if release
		{
			//set object
			baby = noone;
			state = 0;
		}
		break;

	
	case 21: // an object is highlighted, awaiting commands
		//scroll menu
		if mouse_wheel_up() && !keyboard_check(vk_shift)
			{selection--; }
		if mouse_wheel_down() && !keyboard_check(vk_shift)
			{selection++; }
		selection = clamp(selection,0,size-1)
		
	if selection != 0 {state = 0; baby = noone;} //moved off move tool, reset target and state
		//if click inside object, state = 22, move obj
		//if click outside ocject, state = 23, rotate obj
		if mouse_check_button(mb_left)
		{					
			if collision_point(mouse_x, mouse_y,  baby, true, false)
			{ //move object around
				state = 22;
				sy = baby.y - mouse_y //starting y
				sx = baby.x - mouse_x
			}
			else 
			{ //rotate, if mouse is outside object
				state = 23;
				angle = point_direction(baby.x, baby.y, mouse_x, mouse_y)
			}
		}
		if mouse_check_button_pressed(mb_right) //delete
		{
			var victim = collision_point(mouse_x, mouse_y, all, true, false)
			if victim != noone { //if there is an object
				if victim.object_index != obj_MadSquare
				{instance_destroy(victim) 
					baby = noone;
					state = 0;
				}
			}
		}
	break;
	
	case 22: //clicked on an existing object... move it
			baby.x = mouse_x + sx
			baby.y = mouse_y + sy
	
		if !mouse_check_button(mb_left) //if release
		{
			//set object down
			state = 21;
		}
	break;
	
	case 23: //clicked outside of a highlighted object, rotate it
		
		var newangle = point_direction(baby.x , baby.y, mouse_x, mouse_y)
		if angle != newangle
		{
			baby.image_angle -= angle_difference(angle, newangle)
			if keyboard_check(vk_shift) baby.image_angle = round(point_direction(baby.x , baby.y, mouse_x, mouse_y)/45)*45
			angle = newangle;
		}
		if !mouse_check_button(mb_left) //if release
		{
			//set object down
			state = 0; baby = noone;
		}
	break;
	
	case 411: //help menu
		if keyboard_check_pressed(vk_f1) || keyboard_check_pressed(vk_escape) {state = 0}
		if keyboard_check_pressed(vk_left) or keyboard_check_pressed(vk_right) 
		{
			helppage += keyboard_check_pressed(vk_right) - keyboard_check_pressed(vk_left)
			helppage = clamp(helppage, 0, 1)
		}
	break;
	
	case 33: //settings menu
	{
		if keyboard_check_pressed(vk_f2) || keyboard_check_pressed(vk_escape) {state = 0}
		var iconsize = 100;
		var hbuffer = 300;
		var vbuffer = 50;
		for (var i = 0; i < 3; i++) //mouseover icon things, each i is a new collumn...
		//options are sorted by collumn
		{
			var xmin = 100 //starting x
			+ iconsize*i + hbuffer*i
			var ymin = 100; //starting y //always same
			var mousex = device_mouse_x_to_gui(0) //want mouse x/y relative to window
			var mousey = device_mouse_y_to_gui(0)
			//if in first collumn, bg scale
			var amnt = 0.1; //how much to scroll by when scrolling scale and speed
			if keyboard_check(vk_shift) {amnt = 0.5}
			if mousex == clamp(mousex, xmin, xmin+iconsize) &&
			mousey == clamp(mousey, ymin, ymin+iconsize) //first row
			{
				if i == 0 global.farscale += (mouse_wheel_up() - mouse_wheel_down())*amnt
				if i == 1 global.farscroll += (mouse_wheel_up() - mouse_wheel_down())*amnt
				if i == 2 global.platformalpha += (mouse_wheel_up() - mouse_wheel_down())*amnt
			}
			ymin += vbuffer+iconsize; //shift down a row
			if mousex == clamp(mousex, xmin, xmin+iconsize) &&
			mousey == clamp(mousey, ymin, ymin+iconsize) //second row
			{
				if i == 0 global.middlescale += (mouse_wheel_up() - mouse_wheel_down())*amnt
				if i == 1 global.middlescroll += (mouse_wheel_up() - mouse_wheel_down())*amnt
				if i == 2 global.onewayalpha += (mouse_wheel_up() - mouse_wheel_down())*amnt
			}
			ymin += vbuffer+iconsize; //shift down a row
			if mousex == clamp(mousex, xmin, xmin+iconsize) &&
			mousey == clamp(mousey, ymin, ymin+iconsize) //third row
			{
				if i == 0 global.nearscale += (mouse_wheel_up() - mouse_wheel_down())*amnt
				if i == 1 global.nearscroll += (mouse_wheel_up() - mouse_wheel_down())*amnt
				if i == 2 global.slidealpha += (mouse_wheel_up() - mouse_wheel_down())*amnt
			}
			ymin += vbuffer+iconsize; //shift down a row
			if mousex == clamp(mousex, xmin, xmin+iconsize) &&
			mousey == clamp(mousey, ymin, ymin+iconsize) //fourth row
			{
				if i == 0 global.ontopscale += (mouse_wheel_up() - mouse_wheel_down())*amnt
				if i == 1 global.ontopscroll += (mouse_wheel_up() - mouse_wheel_down())*amnt
			}

		}
		
		if mouse_wheel_up() || mouse_wheel_down()
		{
			
			//game crashes if these go to 0
				global.farscale = clamp(global.farscale, 0.1, 30) 
				global.middlescale= clamp( global.middlescale, 0.1, 30) 
				global.nearscale = clamp(global.nearscale , 0.1, 30) 
				global.ontopscale = clamp(global.ontopscale , 0.1, 30) 
				//just for neatness
				global.platformalpha = clamp( global.platformalpha, 0, 1) 
				global.onewayalpha = clamp( global.onewayalpha, 0, 1) 
				global.slidealpha = clamp( global.slidealpha, 0, 1) 
			//save to ini 
			/*
			ini_open("options.ini")
			ini_write_real("far", "scale", global.farscale)
			ini_write_real("far", "scroll", global.farscroll)
			ini_write_real("middle", "scale", global.middlescale)
			ini_write_real("middle", "scroll", global.middlescroll)
			ini_write_real("near", "scale", global.nearscale)
			ini_write_real("near", "scroll", global.nearscroll)
			ini_write_real("ontop", "scale", global.ontopscale)
			ini_write_real("ontop", "scroll", global.ontopscroll)
			
			ini_write_real("platform", "alpha", global.platformalpha)
			ini_write_real("oneway", "alpha", global.onewayalpha);
			ini_write_real("slide", "alpha", global.slidealpha);
			*/
		}

	//color picker
	if (mouse_check_button(mb_left)) {
		    // CHECK IF THE MOUSE IS ON THE COLOR
		    if (is_mouse_here(cp_left,cp_top,cp_left+cp_size,cp_top+cp_size)) {
    
		        // MOVE THE CURSOR SPRITE //mouse pos vs center of color box
		        myX =  device_mouse_x_to_gui(0) - cp_left
						//how to make work in GUI?
		        myY =  device_mouse_y_to_gui(0) - cp_top
        
		        // SET THE HUE AND SATURATION BASED ON THE MOUSE POSITION
		        global.platformh = round((myX/cp_size)*255);
		        global.platforms = 255-round((myY/cp_size)*255);
        
		        // MAKE THE COLOR
		        myColor = make_colour_hsv(global.platformh,global.platforms,global.platformv);
    
		    }
    
		    // CHECK IF THE MOUSE IS ON THE VALUE SLIDER

		    if (is_mouse_here(val_left,val_top,val_left+val_width,val_top+val_height)) {
				
				vy = device_mouse_y_to_gui(0) - val_top
		        // SET THE VALUE TO MATCH THE SLIDER
		        global.platformv = 255-round((vy/val_height)*255);
        
		        // MAKE THE COLOR
		        myColor = make_colour_hsv(global.platformh,global.platforms,global.platformv);
    
		    }
			ini_open("options.ini")
				ini_write_real("platform", "hue", global.platformh);
				ini_write_real("platform", "saturation", global.platforms);
				ini_write_real("platform", "value", global.platformv);
			ini_close()
		}


	}
	break;
	
	case 1000: //deleting select
	
			//draw rectangle, anything touching that gets deleted
		
			if mouse_check_button_released(mb_right) {state++}
	break;
	case 1001: //deleting deleting
		
				var victimlist = ds_list_create();
				
				if deletex == mouse_x and deletey == mouse_y { //delete just one thing
					var singlepointdestruction = ds_list_create();
					collision_point_list(deletex, deletey, all, true, true, singlepointdestruction, true)
					
					if ds_list_size(singlepointdestruction) > 0 {
					var victim = singlepointdestruction[| 0]; 
					
						if onlist != 2 and //anything but assets
							(ds_list_find_index(platform_list, victim.object_index) != -1
							or ds_list_find_index(enemy_list, victim.object_index) != -1)
									{instance_destroy(victim)} 

						if onlist == 2 and victim.object_index == obj_assetlayer 
								{instance_destroy(victim)} //assets
					}
				}
				
				else {//box selection
					collision_rectangle_list(mouse_x, mouse_y, deletex, deletey, all, true, true, victimlist, true)
				
					if ds_list_size(victimlist) > 0 {
					do {
							var victim = victimlist[| 0]
					
							if onlist != 2 and //anything but assets
							(ds_list_find_index(platform_list, victim.object_index) != -1
							or ds_list_find_index(enemy_list, victim.object_index) != -1)
									{instance_destroy(victim)} 

						
							if onlist == 2 and victim.object_index == obj_assetlayer 
									{instance_destroy(victim)} //assets

							ds_list_delete(victimlist, 0);
						}
						until (ds_list_size(victimlist) == 0)
					}
				}
				state = 0;
	break;
	
	
	case 2000: //selecting area
	
			//draw rectangle, anything touching that gets selected, barring assets
			if !mouse_check_button(mb_left) {state++}
	break;
	
	case 2001: //selecting area 2
	
		//grab all selected instances
		ds_list_clear(selected_list);
		var templist= ds_list_create(); 
			collision_rectangle_list(mouse_x, mouse_y, sx, sy, all, false, true, templist, false)
				
		if ds_list_size(templist) > 0 { //if caught anyone
				for (var i = 0; i < ds_list_size(templist); i++) 
				{
					var victim = templist[| i];
					if onlist < 2{ //if selecting objects
							if (ds_list_find_index(platform_list, victim.object_index) != -1
								or ds_list_find_index(enemy_list, victim.object_index) != -1)
										{ds_list_add(selected_list, victim); } //if not placeable obj, remove from selection
						}
					if onlist == 2 {//if selecting assets
						if victim.object_index == obj_assetlayer 
						{ds_list_add(selected_list, victim); } //if not asset, remove from list
					}
				}
				if ds_list_size(selected_list) > 0 {state++; //if there's still objects
					var ls = ds_list_size(selected_list); //find extreme bboxes
						for ( var i = 0; i < ls; i++) 
						{
							var victim = selected_list[| i];
							if i == 0 //reset udlr
							{
								left = victim.bbox_left;
								right = victim.bbox_right;
								up = victim.bbox_top;
								down = victim.bbox_bottom;
							}
							
							if victim.bbox_left < left left = victim.bbox_left
							if victim.bbox_right > right right = victim.bbox_right
								if victim.bbox_top < up up = victim.bbox_top
								if victim.bbox_bottom > down down = victim.bbox_bottom
						}
					
				}
				else state = 0;
			}
		else  // none selected
		{state = 0;}
	break;
	
	case 2002: //have objs selected now, await commands
		if selection != 0 {state = 0; ds_list_clear(selected_list) } //moved off move tool, reset targets and state

		//if click on one of the objects, can drag
			var grablist = ds_list_create();
			var gotem = false;
			
							var ls = ds_list_size(selected_list); //find extreme bboxes
								for ( var i = 0; i < ls; i++) 
								{
									var victim = selected_list[| i];
									if i == 0 //reset udlr
									{
										left = victim.bbox_left;
										right = victim.bbox_right;
										up = victim.bbox_top;
										down = victim.bbox_bottom;
									}
							
									if victim.bbox_left < left left = victim.bbox_left
									if victim.bbox_right > right right = victim.bbox_right
										if victim.bbox_top < up up = victim.bbox_top
										if victim.bbox_bottom > down down = victim.bbox_bottom
		
									with victim {init_angle = image_angle;  //add to this when rotate
										init_dir = point_direction(other.sx, other.sy, x, y); //
									}
								}
								
						sx = (left+right)/2;
						sy = (up+down)/2;	
						
					for ( var i = 0; i < ls; i++) //it's fucked up to have two loops...
						{ //but sx/sy requires a full loop to check all bboxes
							var victim = selected_list[| i];
							with victim {init_angle = image_angle;  //add to this when rotate
								init_dir = point_direction(other.sx, other.sy, x, y); //
							}
						}
			if mouse_check_button_pressed(mb_left)
			{
				
						var list_size = ds_list_size(selected_list) //reset xstart/ystart for calcs
							for (var i = 0; i < list_size; i++)
							{//record current x/y
								with selected_list[| i] {xstart = x; ystart = y;}
							}
									
						collision_point_list(mouse_x, mouse_y, all, true, true, grablist, false);
						do {
							if ds_list_find_index(selected_list, grablist[| 0] ) != -1 //
							{
								gotem = true;
								state = 2003; //successful grab
								sx = mouse_x; sy = mouse_y;
								break;
							}
				
							ds_list_delete(grablist, 0)
						}
						until ( ds_list_size(grablist) == 0 );

					if gotem = false {		//if click off objects, rotate, then deselect
						state = 2050;

						angle = point_direction(sx, sy, mouse_x, mouse_y)
						
						//state = 0; //it's fucked, just deselect
						//ds_list_clear(selected_list )
						
					}
			} //if mb_left

			if mouse_check_button_pressed(mb_right) //delete all selected objects
				{	
						collision_point_list(mouse_x, mouse_y, all, true, true, grablist, false);
						do { //did you click on an object that was selected?
							if ds_list_find_index(selected_list, grablist[| 0] ) != -1 //
							{
								gotem = true; //successful grab
								break;
							}
				
							ds_list_delete(grablist, 0)
						}
						until ( ds_list_size(grablist) == 0 );

					if gotem = true {	//delete selected objects
						for (var i = 0; i < ds_list_size(selected_list); i++)
						{
							instance_destroy( selected_list[| i] );
						}
						ds_list_clear(selected_list); 
						state = 0; //and return to neutral
					}
				} //mb_right

	break;
	
	case 2003: //drag group
	
				{//reset udlr, so box draws right
					var ls = ds_list_size(selected_list); //find extreme bboxes
					for ( var i = 0; i < ls; i++) 
					{
						var victim = selected_list[| i];
						if i == 0 //reset udlr
						{
							left = victim.bbox_left;
							right = victim.bbox_right;
							up = victim.bbox_top;
							down = victim.bbox_bottom;
						}
							
						if victim.bbox_left < left left = victim.bbox_left
						if victim.bbox_right > right right = victim.bbox_right
							if victim.bbox_top < up up = victim.bbox_top
							if victim.bbox_bottom > down down = victim.bbox_bottom
					}	
				}
	
		var xoff = mouse_x - sx; 
		var yoff = mouse_y - sy;
		
		var list_size = ds_list_size(selected_list)
		for (var i = 0; i < list_size; i++)
		{
			with selected_list[| i] { //move objects
				x = xstart + xoff;
				y = ystart + yoff;
			}
		}
		
		if mouse_check_button_released(mb_left) { //let go
			state = 2002;
		}
	break;
	
	case 2050: //rotating, centered on sx/sy, the midpoint of combined bboxes
		
		//lengthdir around center, angle is normal
		var mangle = point_direction(sx, sy, mouse_x, mouse_y)
		var nangle = angle_difference(mangle, angle)
		
		var list_size = ds_list_size(selected_list)
			for (var i = 0; i < list_size; i++)
			{
				with selected_list[| i] { //move objects
					image_angle = init_angle + nangle;
					var newdir = init_dir + nangle;
					var cendis = point_distance(xstart, ystart, other.sx, other.sy); //dist to center, which stays same
					x = other.sx + lengthdir_x(cendis, newdir);
					y = other.sy + lengthdir_y(cendis, newdir);
				}
			}
		if mouse_check_button_released(mb_left) { //let go
			ds_list_clear(selected_list);
			state = 0;
		}
	break;
	
	
}

