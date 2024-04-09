/// @description Insert description here
// You can write your code in this editor


//THIS IS FOR THE ARTY FIGHT

//#macro gam view_camera[1]

	surf = surface_create(700,700)

view_surface_id[1] = surf

view_set_visible(1, true)



salpha = 0;
helpstatic = 0;


holdspace = 0; // false for small,  true for large
started = false; //hold showlevel at 0, until arty says so


global.zoom = 1.5;

alarm[0] = 2;
	 monumw = 4 //ammount of monitors, horizontally
	 monumh = 4 //vertically
showlevel = 0; //how many monitors to show, when showing many small monitors

montimer = 0;
maxmontimer = 5; //cooldown on increasing showlevel

//window_set_size(room_width, room_height)
//window_center()
//surface_resize(application_surface, room_width, room_height)
