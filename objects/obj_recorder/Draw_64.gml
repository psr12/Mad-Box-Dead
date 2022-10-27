/// @description Insert description here
// You can write your code in this editor

//draw_text(100,10, takemeback)
if seefps draw_text(500,30, "FPS: " + string(fps) + " (Ctrl)" )// + string(alarm[0])
if seefps draw_text(500,70, string(fps_real))// + string(alarm[0])
//if seefps draw_text(500,80, room_get_name(room)) // + string(alarm[0])
//if seefps draw_text(500,130, state) // + string(alarm[0])

//if seefps draw_text(10,80, showingfrom)
//draw_text(600, 600, unlerp(0, 500, 250) )
//draw_text(600, 660, unlerp(100, 1100, 700) )
//draw_text(680, 50, y)
//draw_text(600, 40, ds_list_size(notelist))
//draw_text(x,y, songname)
//draw_text(500,100, alarm[0])

//draw_sprite(bg_tiles[| 0] ,0,400,400)

//if state == 99 || state == -2 exit; //in level editor, no drawing


#region black background, heart and the two bars on the side that the other bars run into
if state < 60 and state != 99 and state != -2 {
draw_set_color(c_black)
draw_set_alpha(min(0.7, recalpha)); //darkness, always alittle transparent
var buff = 30
draw_rectangle(0, bbox_top_fix-buff, room_width, bbox_bottom_fix+buff, false) //black bar
draw_set_color(c_white)
draw_set_alpha(min(1, recalpha));
draw_set_font(Font1)

		//shader_set(shader_bumpnotes);
		//shader_set_uniform_f(bumpnoteheightid, bumpnoteheight)
		//shader_set_uniform_f(bumpnotedistid, bumpnotedist)

var pulsesize = 0.3
var bull = 1+ pulsesize * (bulge/100); //pump the heart up
draw_sprite_ext(middleheart, 0, x,y, bull, bull, 0, image_blend, recalpha)
draw_sprite_ext(middleheart, 0, x,y, bull, bull, 0, c_yellow, bulge/200) //yellow tint on heart
bull = 1; //reset scale for bars
draw_sprite_ext(middlebars, 0, x,y, bull, bull, 0, image_blend, recalpha) //the two bars side of the heart
}
#endregion

if showtext > 0 && (state == 1 )
//|| state == 10)  //countdown numbers
&& !instance_exists(obj_mobrathandler)
{draw_text_transformed(x-string_width(showtext)*5, ty, showtext, 10, 10, 0)}


	var escx = 900//x val for explanation text
	var esc = 30 //yval for first line of explanation text
	var rdo = 60 //2nd line
		switch state //explanation text, ESC and R
		{
			case -1: break; //keybinding
			case 0: draw_text(escx, esc, "R: Main Menu"); //song select
					draw_text(escx, rdo, "SPACE: Select song"); 
					draw_text(escx, rdo+30, "BACKSPACE: Delete beatmap"); break;//song select
			case 1: break; //recording countdown
			case 2: draw_text(escx, esc, "ESC: Stop recording notes"); break; //recording notes

			case 5: draw_text(escx, esc, "ESC: Finish editing (saves)"); //editing
					draw_text(escx-50, rdo, "R: Song select (doesn't save)"); break;
			case 6: draw_text(escx, esc, "SPACE: Stop playback"); break; //in-editor playback
	
			case 8: draw_text(escx, rdo, "R: Return to editing");  //level select
					draw_text(escx, esc, "SPACE: Select stage"); 
					draw_text(escx-70, rdo+30, "BACKSPACE: Delete custom room"); 
					draw_text(escx, rdo+150, "During level"); 
					draw_text(escx-40, rdo+180, "MOUSE WHEEL + SHIFT: Zoom "); 
					draw_text(escx-40, rdo+210, "MIDDLE MOUSE: Pan");	
					break;

			case 10: //playing countdown
					draw_text(escx+100, esc, "ESC: Pause"); 
					//draw_text(escx, rdo, "R: Restart level"); 
					break; 
			case 11: break; //playing
		}


		
switch state //name of the state
{
	case 0: draw_text(600, 10, "Song Select") break;//song select
	case 1: draw_text(600, 10, "Recording Countdown") break; //recording countdown
	case 2: draw_text(600, 10, "Recording") break; //recording

	case 5: draw_text(600, 10, "Editing") break;
	case 6: draw_text(600, 10, "Editor Playback") break; //in-editor playback
	
	case 8: draw_text(600, 10, "Level Select") break; //level select
	
	case 10: break; //playing countdown
	case 11: break; //playing
}
if state == -1{ //keybinding
draw_set_color(c_black)
draw_rectangle(0,0, room_width, room_height, false); //bg, cover up heart and stuff
draw_set_color(c_white);
draw_set_font(Font1)
var shei = string_height("PP")

//instruction text
draw_text(0,0, global.methodOfInput);

draw_set_font(font0)
draw_text(900,100, @"
Use Arrow Keys and Space to select a bind
Then press a button to set the new bind
Backspace to unbind, ESC to cancel a bind
Press F12 to rest all binds to default

Analog sticks can't be set as binds,
but will work when platforming.

All bindings are just for platforming,
menu and edit controls can't be changed.
"
)

draw_set_defaults()

var shei = string_height("PP")

//if on last slot, highlight exit
if leftright == slots {draw_set_color(c_white) }
	else {draw_set_color(c_gray)}
draw_ctext(1000, 100, "Exit")

#region keys, slot 0
	var dx = 0;
	var dy = 200;
	var square = shei; //vert size of squares
	var squareleng = 120; //horizontal size of squares
	var buffer = 10;
	draw_set_color(c_gray) //background squares
		scr_trash(0); draw_ctext(dx+200, dy-100, "Keybindings")

	var oplength = array_length(options)
	for (var o = 0; o < oplength; o++;) //per action, vertical boxes
	{
		dx=50; //where text draws
		if updown == o && leftright == 0 {draw_set_color(c_white)} //highlight row
			else {draw_set_color(c_gray)}
		draw_text(dx, dy-shei/2, options[o]) //"left"
	
		dx = 250; //where left square starts
		var ki = 0;
		if global.methodOfInput == "KEYBOARD"
		{
			switch o //grab actual key value 
			{
				case 0:		ki = global.keyLeft_kb; break;
				case 1:		ki = global.keyRight_kb; break;
				case 2:		ki = global.keyUp_kb; break;
				case 3:		ki = global.keyDown_kb; break;
				case 4:		ki = global.keyCharge_kb; break;
				case 5:		ki = global.keyDrop_kb; break;
				case 6:		ki = global.keyJump_kb; break;
				case 7:		ki = global.keyDash_kb; break;
			}
		}
		if global.methodOfInput == "GAMEPAD"
		{
			switch o //grab actual key value 
			{
				case 0:		ki = global.keyLeft_gp; break;
				case 1:		ki = global.keyRight_gp; break;
				case 2:		ki = global.keyUp_gp; break;
				case 3:		ki = global.keyDown_gp; break;
				case 4:		ki = global.keyCharge_gp; break;
				case 5:		ki = global.keyDrop_gp; break;
				case 6:		ki = global.keyJump_gp; break;
				case 7:		ki = global.keyDash_gp; break;
			}
		}
		//for(var q = 0; q<1; q++) //x3 squares... or not
		var q = 0
		{
			if leftright == q && updown == o {draw_set_color(c_white) //highlight square
				if ambinding == 1 {draw_set_color(c_yellow)} } //currently rebinding
				else {draw_set_color(c_gray) }
			draw_rect(dx, dy, square, squareleng);
			draw_set_color(c_dkgray); draw_set_font(Font1);
			if ki != -1	{draw_ctext(dx, dy, key_value(ki) )}
			draw_set_defaults();
			dx+= squareleng+buffer;
		}
		dy+= shei + buffer;
	}

#endregion
#region animation modes. slot 1
		//draw x, draw y, border, box width, box height
		var dx = 450; var drey = 100; var bor = 30; var wid = 120, var hei = 120;
			scr_trash(1); draw_ctext(dx, drey, "Animation")
			dx-=50 //move over, for the teal box left edge
			drey+=100;
		if leftright == 1 and updown < 2 draw_set_color(c_teal) //box behind parts/solid
			else draw_set_color(c_gray)
		
		draw_rectangle(dx-bor, drey-bor, dx+wid, drey+hei, true);
		
		//parts/solids select
		draw_set_color(c_dkgray)
		if global.animationmodes == 0 draw_set_color(c_gray)
		if leftright == 1 and updown == 0 draw_set_color(c_white)
			draw_text( dx, drey, "Parts");
		draw_set_color(c_dkgray)
		if global.animationmodes == 1 draw_set_color(c_gray)
		if leftright == 1 and updown == 1 draw_set_color(c_white)	
				drey += 60;
			draw_text( dx, drey, "Solids");
		
		drey += 100; //jump down for animation toggles
				if leftright == 1 and updown >=2 draw_set_color(c_teal) //box behind dash anims
			else draw_set_color(c_gray)
		draw_rectangle(dx-bor, drey, dx+150, drey+300, true);
		
		var turnonone = true; //stays true if no dash animations are turned on
		var animtext = "" //the name of the animation
		for (var bb = 0; bb < array_length(dashanim_array); bb++)
		{
			drey += 50;
			switch bb
			{
				case 0: animtext = "dash"; break;
				case 1: animtext = "bash"; break;
				case 2: animtext = "sonic"; break;
				case 3: animtext = "sugar"; break;
				case 4: animtext = "gorilla"; break;
			}
			if updown-2 == bb draw_set_color(c_white)
			else draw_set_color(c_gray)
			if leftright != 1 {draw_set_color(c_gray)}
			draw_text(dx, drey, animtext); //name of animation
			draw_text(dx+100, drey, dashanim_array[bb]); //on or off
			if dashanim_array[bb] {turnonone = false;} //if at least on is on...
		}
		draw_set_color(c_red) //warning message
		if turnonone {draw_text_transformed(0,0, "TURN ON AT LEAST ONE DASH ANIMATION", 2,2,340)}
		draw_set_defaults()
#endregion
#region other options, slot 2
		//draw x,		draw y,		 border,		
		var dx = 700; var drey = 100; var bor = 30;
		scr_trash(2); draw_ctext(dx, drey, "Other")
		drey+=100;
		var list = [
		"Show Heart",
		"Autohit",
		"Invincible",
		"Timer On",
		"Microgames",
		"Confetti",
		]

		var sheit = string_height("A");
		for (var fi = 0; fi < array_length(opArray2d[2]); fi++)
		{
			scr_trashier(2, fi)
			draw_ctext(dx, drey + sheit*fi, list[fi] + " " + string(opArray2d[2][fi])) 
		}
#endregion
} //end of keybindings
if state == 0 //song select
{
	draw_set_color(c_yellow)
	var sh = string_height("a");
	var texx = 600;
	var texy = 450;
	var slsize = ds_list_size(songlist)
	var tscale = 1;
	var ss = 0; //for list index, gets wrapped if under/over
	var shodi = 5// how many from center to show, each side
	for (var s = songselect-shodi; s<songselect+shodi; s++)
	{
		texy = 350 + soseoffset*sh;
		draw_set_alpha(  1 - abs(songselect-s)*0.2   )
		ss = Wrap(s, 0, slsize-1)
		draw_text_transformed(texx+abs(songselect-s)*5, texy+sh*s-songselect*sh, songlist[| ss],
		tscale, tscale, 0)
		var guh = string_replace_all(string(songlist[| ss]), ".ogg", "")
		if file_exists("beatmaps/" + guh + ".txt") draw_text(texx-400+abs(songselect-s)*5, texy+sh*s-songselect*sh,
		"Beatmap detected!")
	}
	draw_set_defaults()
	var arscale = 2;
		draw_sprite_ext(spr_arrow, 0, 550, 350+sprite_get_height(spr_arrow)*arscale/4, arscale, arscale, 0, c_white, 1);
}

if state == 2 { //recording
	var texx = 10; //controls text
	draw_set_font(Font1)
	//draw_text(texx, 20, "Intro ends at: " + string(introends) )
	draw_text(texx, 50, "Song volume: " + string(songvolume) )
	draw_text(texx, 70, @"
Press SPACE to start recording, and to place a white note. 
Press A to place a red note. They can be chained; a white note ends the chain.
Press ESC to stop recording.
Use mouse wheel to adjust song volume
The default beatmap has to be deleted manually, from the .exe folder."
)
	
	
	var redactive = false; var isthisit = showingfrom
	var startfrom =  max(0, showingfrom-onesec*3);
	for ( var i = startfrom;  //from onesec*5 away from the end, to the end
	i < showingfrom; i++) //so it shows the most recent notes placed while recording
	{
		var input = notelist[| i]
		if input //if there is a note
		{
				var sprite = whitebar; 
				if redactive == false //normal, no reds prior
				{
					if input == 1 {sprite = whitebar;}
					if input == 2 {sprite = redbar1; redactive = true} //red bar, turn on red
				}
				else //there are reds
				{
					if input == 1 {sprite = redbar2; redactive = false;}  //big red bar, turn off redactive
					if input == 2 {sprite = redbar1;} 
				}

			draw_sprite(sprite, 0, x+sprite_width_fix/2 + (isthisit-i)*dist, y) 
			//right side, going right
			draw_sprite_ext(sprite, 0, x-sprite_width_fix/2 - (isthisit-i)*dist, y, -1, 1, 0, c_white, 1)
			//left side, going left
		
			//chain is backwards to how it will be in playback
		}
		if redactive //draw red background for red notes
		{
			draw_set_alpha(0.2)	
			draw_set_color(c_red)
			var fromcenter = (ds_list_size(notelist)-i)*dist + sprite_width_fix/2
			draw_rectangle( x+fromcenter, bbox_top_fix, x+fromcenter+dist, bbox_bottom_fix, false )
			//right side
			draw_rectangle( x-fromcenter, bbox_top_fix, x-fromcenter-dist, bbox_bottom_fix, false )
			//left side
			draw_set_alpha(1)	
			draw_set_color(c_white)
		}
		//newly created notes fly away from middle
	}

}

if state == 5{ //editing
	var texx = 10; //controls text
	draw_set_font(Font1)
	draw_text(texx, 20, "Intro ends at: " + string(introends/gamespeed))
	draw_text(texx, 50, "Song ends at: " + string(songends/gamespeed) )
	draw_text(texx, 80, "Song volume: " + string(songvolume) )
	draw_text(texx, 90, @"
Click and drag to move through the song, and to change note speed.
Left click to place a white note. Right click to place a red note.
D sets introend. S sets songend. 
Home and End jump to the start and end. Page up/down jump by 3 seconds
A starts recording again.
")

//BPM
draw_rectangle(bpmsquare_left, bpmsquare_top, bpmsquare_left+bpmsquare_size, bpmsquare_top+bpmsquare_size, false)
draw_sprite_stretched(spr_mousewheelicon, 0, bpmsquare_left, bpmsquare_top, bpmsquare_size,bpmsquare_size)
draw_text(bpmsquare_left+100, bpmsquare_top, "BPM: " + string(BPM))
//snap
draw_rectangle(snapsquare_left, snapsquare_top, snapsquare_left+snapsquare_size, snapsquare_top+snapsquare_size, false)
draw_sprite_stretched(spr_mousewheelicon, 0, snapsquare_left, snapsquare_top, snapsquare_size, snapsquare_size)
if snap_to_nearest>0 {draw_text(snapsquare_left-310, snapsquare_top, "Snap to nearest: 1/" + string(snap_to_nearest))
draw_text(snapsquare_left-510, snapsquare_top+50, "F9 to autofill song from playhead")}
else draw_text(snapsquare_left-310, snapsquare_top, "Snap to nearest: off")
//vol
draw_rectangle(volsquare_left, volsquare_top, volsquare_left+volsquare_size, volsquare_top+volsquare_size, false)
draw_sprite_stretched(spr_mousewheelicon, 0, volsquare_left, volsquare_top, volsquare_size,volsquare_size)

var str_hei = string_height("A")
	draw_text(texx+800, notespeed_height, "Note speed is: " + string(dist) )
	draw_sprite(spr_scrub,0, x, y-100); //instructions
	draw_sprite(spr_scrub,0, x, notespeed_height+33); //instructions
		draw_set_alpha(0.2)
		draw_set_color(c_gray);
			draw_rectangle(0, notespeed_height, room_width, notespeed_height+str_hei+20, false) //notespeed box
			draw_rectangle(0, bbox_top_fix, room_width, bbox_top_fix-sprite_height_fix, false) //notebar scrolling box
		draw_set_alpha(1)
		draw_set_color(c_white);
		
	var distfromcenter = (sprite_width_fix/2); //where bars disappear
	var redactive = false; 
	var templastred = lastred;
	//first onesec*5 notes, or until end if shorter
	var lessthan = min(onesec*10, ds_list_size(notelist) ) + showingfrom
	var startingfrom = max(0, showingfrom);
	var fpbsprite = whitebar; //for showing FPB
	for ( var i = startingfrom; i < lessthan; i++) 
		{
			//FPB = FPS / (BPM / 60)
			var FPB = gamespeed / (BPM/60)
			
			if snap_to_nearest > 0 and floor(i mod (FPB/snap_to_nearest)) == 0 //show snapto locations, first so under
				{	

					draw_sprite_ext(fpbsprite, 0, x+distfromcenter + i*dist - showingfrom*dist, y, 1, 1, 0, c_aqua, .51) 
					//right side
					draw_sprite_ext(fpbsprite, 0, x-distfromcenter - i*dist + showingfrom*dist, y, -1, 1, 0, c_aqua, .51)
					//left side
				}
			if floor(i mod FPB) == 0 //show # of BEATS
				{	
					var beatnumber = floor(i div FPB)
					var sinwid = string_width( beatnumber )/2
					draw_text(x-sinwid+distfromcenter + (i)*dist - showingfrom*dist, bbox_top_fix-30, beatnumber )
					draw_text(x-sinwid-distfromcenter - (i)*dist + showingfrom*dist, bbox_top_fix-30, beatnumber )

					//draw_sprite_ext(fpbsprite, 0, x+distfromcenter + i*dist - showingfrom*dist, y, 1, 1, 0, c_gray, 1) 
					//right side
					//draw_sprite_ext(fpbsprite, 0, x-distfromcenter - i*dist + showingfrom*dist, y, -1, 1, 0, c_gray, 1)
					//left side
				}

			var input = notelist[| i]
			if input //if there is a note
			{
					var sprite = whitebar; 
					if redactive || templastred //there are or were red notes
					{
						if input == 1 {sprite = redbar2; redactive = false; templastred=false;}  //big red bar
						if input == 2 {sprite = redbar1;} 
					}
					else //no red notes at all
					{
						if input == 1 {sprite = whitebar;}
						if input == 2 {sprite = redbar1; redactive = true;} //small red bar
					}

				
				draw_sprite_ext(sprite, 0, x+distfromcenter + i*dist - showingfrom*dist, y, 1, 1, 0, c_white, 1)
				//right side
				draw_sprite_ext(sprite, 0, x-distfromcenter - i*dist + showingfrom*dist, y, -1, 1, 0, c_white, 1)
				//left side
			}
			if (redactive || templastred) && state > 5//draw red background for red notes, lastred only for playback
			{
				draw_set_alpha(0.2)	
				draw_set_color(c_red)
				var fromcenter = i*dist + distfromcenter
				draw_rectangle( x+fromcenter, bbox_top_fix, x+fromcenter+dist- showingfrom*dist, bbox_bottom_fix, false )
				//right side
				draw_rectangle( x-fromcenter, bbox_top_fix, x-fromcenter-dist+ showingfrom*dist, bbox_bottom_fix, false )
				//left side
				draw_set_alpha(1)	
				draw_set_color(c_white)
			}
			if i == introends { //show end of intro
				draw_line(x-distfromcenter - floor(i)*dist + showingfrom*dist, 
				bbox_top_fix, x-distfromcenter - floor(i)*dist + showingfrom*dist, bbox_bottom_fix)
				draw_line(x+distfromcenter + floor(i)*dist - showingfrom*dist, 
				bbox_top_fix, x+distfromcenter + floor(i)*dist - showingfrom*dist, bbox_bottom_fix)
				}
			if i == songends { //show end of song
				draw_line(x-distfromcenter - floor(i)*dist + showingfrom*dist, 
				bbox_top_fix, x-distfromcenter - floor(i)*dist + showingfrom*dist, bbox_bottom_fix)
				draw_line(x+distfromcenter + floor(i)*dist - showingfrom*dist, 
				bbox_top_fix, x+distfromcenter + floor(i)*dist - showingfrom*dist, bbox_bottom_fix)
				}
		}
	if mouse_y == clamp(mouse_y, bbox_top_fix, bbox_bottom_fix) //if hovering over note bar
	&& mouse_x != clamp(mouse_x, bbox_left_fix, bbox_right_fix) //but not in the heart
	{
		//draw_rectangle(mouse_x, bbox_top_fix, mouse_x+dist, bbox_bottom_fix, true)
		draw_sprite_ext(whitebar, 0, mouse_x, y, sign(mouse_x-x), 1, 0, c_white, 0.5)
	}
}

if state == 8 { //level select
	draw_set_alpha(1)
	draw_set_color(c_yellow)
	var texx = 500;
	var sh = string_height("a");
	var texy = 400;
	var arwid = sprite_get_width(spr_arrow)
	var arhi = sprite_get_height(spr_arrow)
	var shodi = 5// how many from center to show, each side
	var tscale = 1;
	var llsize = ds_list_size(roomlist);
	var custindex = ds_list_find_index(roomlist, Custom)
	for (var r = songselect-shodi; r < songselect+shodi; r++)
	{
		texy = 400 + soseoffset*sh;
		texx = 500 + abs(songselect-r)*10
		var ttd = 0; //text to draw
		var rr = Wrap(r, 0, llsize-1); //rr so it doesn't mess up for loop
		if rr > custindex { ttd = filename_name( roomlist[| rr]) } //custom room, already a string
		else {ttd = room_get_name(roomlist[| rr])} //default rooms, get string from room id
				draw_set_alpha(  1 - abs(songselect-r)*0.2   ) //set alpha
			var rectanglecolor = c_red; //stock
			if rr = custindex rectanglecolor = c_fuchsia //custom sel
			if rr > custindex rectanglecolor = c_blue //custom levels
				draw_set_color(rectanglecolor)
				draw_rectangle(texx, texy+sh*r-songselect*sh, 
				texx+ max(string_width(ttd),200) , 
				texy+sh*r-songselect*sh+sh, false)
				draw_set_color(c_yellow)
		draw_text_transformed(texx, texy+sh*r-songselect*sh, ttd,
		tscale, tscale, 0) //draw level name
	}
	texx = 500; texy = 400;
	draw_set_defaults()
	draw_sprite(spr_arrow, 0,texx-arwid,texy+arhi/2-(soseoffset*sh))
}

if state == 9 { //inputting a name
	draw_set_alpha(0.7);
	draw_set_color(c_black);
	draw_rectangle(0, 0, room_width, room_height, false); //dim everything else
	draw_set_color(c_white)
	draw_set_alpha(1);
	draw_text(room_width/2 - 60, room_height/2, keyboard_string + textcursor);
	draw_text(500,200, "Input New Room Name, Then Hit Enter")
	draw_set_defaults();
}

if (state == 6 || state >= 10) && state < 60{ //playback, notes
	
	if state == 6 	draw_text(50, 50, "Song volume: " + string(songvolume) )
	
	var distfromcenter = (-grace/2) + (sprite_width_fix/2)   -  ((grace/2)); //where bars disappear
	var redactive = false; 
	var templastred = lastred;
	
	var nlsize = ds_list_size(notelist)
	var busize = ds_list_size(backup)
	var lesthan = min(onesec*6, ds_list_size(notelist) )
		var fpbsprite = whitebar; //for showing FPB
		
	draw_set_alpha(recalpha); 
	
	for ( var i = 0; i < lesthan; i++) //first onesec*5 notes, or until end if shorter
		{			
			var currentslot = (i + (busize-nlsize))
			var FPB = gamespeed / (BPM/60)


			if floor(currentslot mod FPB) == 0 && state == 6//show seconds, editing playback only
				{	
					var beatnumber = floor(currentslot div FPB)
					var sinwid = string_width(beatnumber)/2
					draw_text(x-sinwid+distfromcenter +i*dist , bbox_top_fix-30, beatnumber) //right
					draw_text(x-sinwid-distfromcenter -i*dist, bbox_top_fix-30, beatnumber) //left
					
					//draw_sprite_ext(fpbsprite, 0, x+distfromcenter + i*dist, y, 1, 1, 0, c_gray, 1) 
					//right side
					//draw_sprite_ext(fpbsprite, 0, x-distfromcenter - i*dist, y, -1, 1, 0, c_gray, 1)
					//left side
				}
			var input = notelist[| i]
			if input //if there is a note
			{
					var sprite = whitebar; 
					if redactive || templastred //there are or were red notes
					{
						if input == 1 {sprite = redbar2; redactive = false; templastred=false;}  //big red bar
						if input == 2 {sprite = redbar1;} 
					}
					else //no red notes at all
					{
						if input == 1 {sprite = whitebar;}
						if input == 2 {sprite = redbar1; redactive = true;} //small red bar
					}

				draw_set_alpha(recalpha); 
				draw_sprite(sprite, 0, x+distfromcenter + i*dist, y) 
				//right side
				draw_sprite_ext(sprite, 0, x-distfromcenter - i*dist, y, -1, 1, 0, c_white, recalpha)
				//left side
			}
			if (redactive || templastred) && state > 5//draw red background for red notes, lastred only for playback
			{
				draw_set_alpha( min(0.2, recalpha) )	
				draw_set_color(c_red)
				var fromcenter = i*dist + distfromcenter
				draw_rectangle( x+fromcenter, bbox_top_fix, x+fromcenter+dist, bbox_bottom_fix, false )
				//right side
				draw_rectangle( x-fromcenter, bbox_top_fix, x-fromcenter-dist, bbox_bottom_fix, false )
				//left side
				draw_set_alpha(recalpha); 
				draw_set_color(c_white)
				
			}
		}

	if state >= 10 //show combo and stuff 
	{
		draw_set_alpha(0.5)
		draw_text(10, 10, "Combo: " + string(combo) )
		draw_set_defaults()
	}
	
	
}

	//shader_reset();

if state == 69 //scoring
{
	var scorex = 900;
	draw_set_alpha(0.8) //bg
	draw_set_color(c_black)
	draw_rectangle(scorex,0,room_width, room_height, false)	
	
	scorex += 100
	draw_set_alpha(1) //text
	draw_set_color(c_white)
	draw_text(scorex,200, "Score")
	draw_text(scorex,250, "Great: " + string(numgreat) )
	draw_text(scorex,300, "Late: " + string(numlate) )
	draw_text(scorex,350, "Early: " + string(numearly) )
	draw_text(scorex,400, "Max Combo: " + string(maxcombo) )
}

if state == 404 //pause menu
{
			draw_set_defaults();
	draw_set_alpha(0.6)
	draw_set_color(c_black)
	draw_rectangle(0,0,9999,9999, false)
		draw_set_defaults();

	 color = c_gray;
	 dx = 700;
	 textdrawy = 100;
	 alpha = 0.8;
	scr_pausetextcheck(0)
	draw_ctext_color(dx, textdrawy, "Continue", color, alpha)
	scr_pausetextcheck(1)
	draw_ctext_color(dx, textdrawy, "Restart", color, alpha)
	scr_pausetextcheck(2)
	draw_ctext_color(dx, textdrawy, "Exit", color, alpha)
	
	draw_set_defaults();
		draw_text(50, 50, "Song volume: " + string(songvolume) )
	draw_sprite_ext(spr_mousewheelicon, 0, 350, 50, 2, 2, 0, c_white, 1);
}

if black_transition_state > 0 {
	draw_set_defaults()
	draw_set_color(c_black)
	var wid = display_get_gui_width()
	var hei = display_get_gui_height()
	var pos = black_transition / 100 * wid - wid*2;
	//draw_rectangle(pos-wid, 0, pos, hei, false)
	draw_sprite_stretched(spr_transitionblock, 0, pos, 0, wid*2, hei)
	draw_set_defaults()
}

/*
 draw_set_defaults()
draw_text(10,10, going_to_room)
draw_text(10,30, going_to_state)
draw_text(10,50, room)
draw_text(10,70, state)
draw_text(10,100, black_transition_state)
draw_text(10,130, black_transition)