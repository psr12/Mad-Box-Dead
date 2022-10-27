/// @description Insert description here
// You can write your code in this editor

#macro cam view_camera[0]
//#macro cam1 view_camera[1]
#macro cam_x camera_get_view_x( view_camera[0] )
#macro cam_y camera_get_view_y( view_camera[0] )
#macro cam_w camera_get_view_width( view_camera[0])
#macro cam_h camera_get_view_height( view_camera[0] )
//#macro cam_w camera_get_view_width( view_camera[0] )
//#macro cam_h camera_get_view_height( view_camera[0] )
    view_visible[0] = true;
    view_enabled = true;
target_camera_angle = 0; //go to this angle via lerp
camera_angle = 0; //this is the current angle
orwidth = 1366
orheight = 768

xoffset = 0;
yoffset = 0;

ending = false;

global.zoom = 1;
targetzoom = global.zoom;
zoomspeed = 0.1;

camlockh = false;

global.maxzoomin = 0.2;
global.maxzoomout = 2;

//zoomadd = 0; //adds to zoom each frame
//zoomaddadd = 0; //adds to zoomadd each frame
camlock = 0; //if true, cam doesn't move

//zoom isn't saved anymore to prevent crash via loading into custom while zoomed out
//ini_open("options.ini")
//global.zoom = ini_read_real("zoom", "zoom", 1)
//xoffset = ini_read_real("zoom", "xoffset", 0)
//yoffset = ini_read_real("zoom", "yoffset", 0)
//ini_close();


view_enabled[0] = false
view_enabled[1] = true

shake = 0;
shakelerp = 0.05;

targetx=x;
targety=y; //for cutscenes
spd = 10;
