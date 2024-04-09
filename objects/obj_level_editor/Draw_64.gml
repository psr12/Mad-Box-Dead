/// @description Insert description here
// You can write your code in this editor
if state == 99 exit //inert
//draw_text(400,400, theme_count)
var dx = 10;
var dy = 50;
buffer = 10;
squareh = 64;
squarew = 64;


//draw_text(500,200, left)
//draw_text(500,230, right)
//draw_text(500,250, up)
//draw_text(500,270, down)
//draw_text(500,300, state)
//draw_text(500, 600, string(sx) + " , " + string(sy) )

//for drawing sidebar
var minimum = clamp(selection-menusize, selection-4, size-menusize);
var maximum = clamp(minimum+menusize, menusize, size);

if onlist == 0 || onlist == 1 || onlist == 4 { 
	var object_list = ds_list_create()
	var object_names = ds_list_create()
	var object_icons = ds_list_create()
	if onlist == 0 {draw_text(0,0, "Platforms (1) (TAB)");  ds_list_copy(object_list, platform_list)
		ds_list_copy(object_names, platform_names)
		ds_list_copy(object_icons, platform_icons)
		}
	if onlist == 1 {draw_text(0,0, "Enemies (2) (TAB)"); ds_list_copy(object_list, enemy_list)
		ds_list_copy(object_names, enemy_names)
		ds_list_copy(object_icons, enemy_icons)
		}
	if onlist == 4 {draw_text(0,0, "Cyber (F) (TAB)"); ds_list_copy(object_list, enemy_list)
		ds_list_copy(object_names, glitchy_names)
		ds_list_copy(object_icons, glitchy_icons)
		}
	//var size = ds_list_size(object_list)

	for (var i = minimum; i < maximum; i++) //objects
	{
		if i == selection draw_set_alpha(1) //highlight selected icon
		else draw_set_alpha(0.5) //lowlight unselected icons
		
		//icon
		if object_icons[| i] != undefined{ 
		draw_sprite_stretched( object_icons[| i],0, dx, dy, squarew, squareh) 
		//name
		if i == selection draw_text(dx+squarew, dy, object_names[| i] ); //text
		//move down
		dy += squareh + buffer
		}

	}
}
if onlist == 2 { draw_text(0,0, "Sprites (3) (TAB)")
	for (var i = minimum; i < maximum; i++) //sprite assets
	{
		if i == selection draw_set_alpha(1) //highlight selected icon
		else draw_set_alpha(0.5) //lowlight unselected icons
		
		if bg_tiles[| i] != undefined{ 
			//icon
		draw_sprite_stretched(bg_tiles[| i],0, dx, dy, squarew, squareh)
		dy += squareh + buffer //move down
		
		//no names on assets
		}
	}
	
			//over under text, outside for loop
		var overunder_x = 100
		var overunder_y = 150
		if current_asset_layer == asset_layer_over {draw_set_alpha(1)}
		else {draw_set_alpha(0.5)}
		draw_text(overunder_x, overunder_y, "On top(f3)")
		
		draw_set_alpha(1)
		draw_text(overunder_x+string_width("On top(f3)  ") , overunder_y, "/" )
		
		if current_asset_layer == asset_layer_under {draw_set_alpha(1)}
		else {draw_set_alpha(0.5)}
		draw_text(overunder_x+string_width("On top(f3)  /"), overunder_y, "  Under(f4)")
		
		var paintx = 100
		var painty = 50
		draw_text(paintx, painty, "Hold ctrl and left click to paint default platforms w/ sprite")
}


draw_set_defaults();

if state == 411 {
	
	draw_set_color(c_black) draw_set_alpha(0.8);
	draw_rectangle(0, 0, 5000, 5000, false)
	draw_set_defaults() //background
	
if helppage == 0 draw_sprite_stretched(spr_arrow, 0, 620, 720, 64, 64)

if helppage == 0
	{
	draw_text( 20,20, @"      Level Editor
WASD or Arrow Keys: Move
ESC: Go to song editor
Space: Save & Start playing
R: Reset to last save

Mouse Wheel: Scroll through placeable objects
Left Click: Place object, drag to scale
Right Click: Delete object, drag to target area

Shift: Uniform scaling while making objects
Move faster while moving

Tab, Shift + Numkeys: Swap item tabs
")
	draw_text( 800, 20, @"
Middle Click Drag: Pan Camera
Shift + Mouse Wheel: Zoom Camera

Q and E: Place a teleport point
If there is a teleport point already, 
move to it and delete it.

When using move tool, left click
to select an object. Drag inside
to move it, drag outside to rotate it.
Click outside or scroll mousewheel
to deselect it.
")
		}
if helppage == 1
	{
draw_text( 20,20, @"         Appear Triggers
Click and drag on them with the move tool
to link them to an object.
When Mad Rat touches the trigger, the
linked object will appear.
Triggers can't be moved, and linked 
objects can't be interacted with.

          F2 Menu
Hover mouse over icons and use scroll wheel
to change the values. 
Drag the color cursor and brightness bar 
to change the color of new platforms.

")
	draw_text( 800, 20, @"     During Play
Number keys: Emotes
Shift + Number keys: More emotes
Ctrl: toggle show FPS
Alt: Lock Camera in place 
ESC: Open pause menu 
R: Return to level editor
")
		}
		
}
else {draw_text(1100, 0, "F1: Show help") 
	draw_text(1100, 30, "F2: Settings")}
draw_set_alpha(snaptogrid + 0.2) draw_text(500, 30, "F5: Snap to grid")
draw_set_defaults();

if state == 33 //settings menu
{
	draw_set_color(c_black) draw_set_alpha(0.4);
	draw_rectangle(0, 0, 5000, 5000, false)
	draw_set_defaults() //background
	/*
	draw_text(700, 300, @"
Mouse over icon, and scroll mousewheel

Lower scroll value = faster scrolling
if value is 0, background will move 1:1
if value is 1, background will not move
if value is over 1, it scrolls backwards
"); */
		var iconsize = 100;
		var hbuffer = 300;
		var vbuffer = 50;

		for (var i = 0; i < 3; i++) //mouseover icon things, each i is a new collumn...
		//options are sorted by collumn
		{
					var xmin = 100 //starting x
					+ iconsize*i + hbuffer*i //each new collumn
					var ymin = 100; //starting y always same
					
			switch i{ //each r loop is a  new row
				case 0: //bg scale
				
				//	draw_text(xmin, ymin-50, "Background Scale")
				//for(var r = 0; r < 4; r++) 
				//{
				//	var dy = ymin + iconsize*r + vbuffer*r //draw y

				//	if r < 3 draw_sprite_stretched(custombg[| r], 0, xmin, dy, iconsize, iconsize)
				//	if r == 3 draw_sprite_stretched(customfg[| 0], 0, xmin, dy, iconsize, iconsize)
				//	//draw_rectangle(xmin, ymin, xmin+iconsize, ymin+iconsize, true)
				//	switch r
				//	{
				//		case 0: draw_text_color(xmin, dy, global.farscale, c_white, c_gray, c_red, c_green, 1) 
				//			draw_text(xmin + iconsize , dy, "far")
				//		draw_sprite_ext(spr_mouseclickicon, 0, xmin + iconsize, dy+50, 1, 1,0, c_white, 1 )
				//		break;
				//		case 1: draw_text_color(xmin, dy, global.middlescale, c_white, c_gray, c_red, c_green, 1) 
				//										draw_text(xmin + iconsize , dy, "middle")
				//			break;
				//		case 2: draw_text_color(xmin, dy, global.nearscale, c_white, c_gray, c_red, c_green, 1)
				//		draw_text(xmin + iconsize , dy, "near") break;
				//		case 3: draw_text_color(xmin, dy, global.ontopscale, c_white, c_gray, c_red, c_green, 1)
				//		draw_text(xmin + iconsize , dy, "foreground") break;
				//	}

				//} 
				break;
				case 1: //bg scrolling
				//	draw_text(xmin, ymin-50, "Background Scroll Speed")
				//for(var r = 0; r < 4; r++)
				//{
				//	var dy = ymin + iconsize*r + vbuffer*r //draw y

				//	if r < 3 draw_sprite_stretched(custombg[| r], 0, xmin, dy, iconsize, iconsize)
				//	if r == 3 draw_sprite_stretched(customfg[| 0], 0, xmin, dy, iconsize, iconsize)
				//	switch r
				//	{
				//		case 0: draw_text_color(xmin, dy, global.farscroll, c_white, c_gray, c_red, c_green, 1) break;
				//		case 1: draw_text_color(xmin, dy, global.middlescroll, c_white, c_gray, c_red, c_green, 1) break;
				//		case 2: draw_text_color(xmin, dy, global.nearscroll, c_white, c_gray, c_red, c_green, 1) break;
				//		case 3: draw_text_color(xmin, dy, global.ontopscroll, c_white, c_gray, c_red, c_green, 1) break;
				//	}

				//} 
				break;
				case 2: //misc
						draw_text(xmin, ymin-50, "Platforrm Opacity")
				for(var r = 0; r < 4; r++)
				{
					var dy = ymin + iconsize*r + vbuffer*r //draw y

					if r == 0 { draw_set_color(myColor)
						draw_rectangle(xmin, dy, xmin+iconsize, dy+iconsize, false)
						draw_set_defaults()
					}
					if r == 1 { draw_sprite_stretched(spr_squareyellow, 0, xmin, dy, iconsize, iconsize)
								draw_sprite_ext(spr_arrow, 0, xmin+iconsize/2, dy+iconsize/2, 1, 1, 90, c_white, 1)}
					if r == 2 draw_sprite_stretched(spr_slideplatform, 0, xmin, dy, iconsize, iconsize)
					switch r
					{
						case 0: draw_text_color(xmin, dy, global.platformalpha, c_white, c_gray, c_red, c_green, 1) break;
						case 1: draw_text_color(xmin, dy, global.onewayalpha, c_white, c_gray, c_red, c_green, 1) break;
						case 2: draw_text_color(xmin, dy, global.slidealpha, c_white, c_gray, c_red, c_green, 1) break;
					}
				} break;
			}


		}	
		
		
		#region //color picker
		//if !is_mouse_here(cp_left-30, cp_top-30, cp_left+cp_size+val_width+60+94, cp_top+cp_size+30)
			//{draw_set_alpha(0.2)} else {draw_set_defaults() }
				// DRAW THE COLOR PICKER, VALUE SLIDER AND COLOR BOX
				draw_set_color($212121);
				draw_rectangle(val_left, val_top,val_left+val_width,val_top+val_height,0); //slider bg

				draw_set_color(myColor);
				draw_rectangle(op_left, op_top, op_left+op_size, op_top+op_size, false); //output color

				draw_set_color(c_white);
				draw_rectangle(val_left, val_top + (val_height - round((global.platformv/255)*val_height)  )
				,val_left+val_width,val_top+val_height,0); //slider white part

				draw_sprite_stretched(sprColorPicker,0,cp_left,cp_top, cp_size, cp_size); //color picker box

				draw_set_color($212121); 
					
				// DRAW THE CURSOR
				draw_set_color(c_white);
				draw_sprite(sprColorPickursor,0,myX+cp_left,myY+cp_top);
				draw_set_defaults()
		#endregion
	
}