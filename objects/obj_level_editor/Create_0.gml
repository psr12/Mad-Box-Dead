/// @description Insert description here
// You can write your code in this editor

alarm[5] = 120;

snaptogrid = false;
snapdis = 64;
asset_transparency = 0.3;
alarm[1] = 2; //after loading
#region f2 menu

global.farsprite = 1 //which sprite in the bg folder to use
global.middlesprite = 1
global.nearsprite = 1
global.ontopsprite = 1

global.farscale = 1 //the scale of the bg sprites
global.middlescale = 1
global.nearscale = 1
global.ontopscale = 1

global.farscroll = 1 //the speed the bg sprites scroll at
global.middlescroll = 0.5
global.nearscroll = 0
global.ontopscroll = -0.1

global.platformalpha = 1 //the alpha values of platforms during gameplay
global.onewayalpha = 1
global.slidealpha = 1
	#region color picker
/// @description  INITIALISE VARIABLES

// STARTING COLOR
//cp = color picker
cp_left = 1000;
cp_top = 550;
cp_size = 128
//val = selected color
val_left = cp_left+cp_size + 30
val_top = cp_top;
val_width = 36
val_height = 128
//op = brightness
op_top = cp_top;
op_left = cp_left + cp_size + 30 + val_width + 30;
op_size = 64;

// WHERE THE CURSOR WILL APPEAR
myX = 0
myY = 0
			ini_open("options.ini")
		global.platformh = ini_read_real("platform", "hue", 1);
		global.platforms = ini_read_real("platform", "saturation", 1);
		global.platformv = ini_read_real("platform", "value", 255);
			ini_close()
			myColor = make_color_hsv(global.platformh,global.platforms,global.platformv)
	#endregion
#endregion

left = 0;
right = 0;
up = 0;
down = 0;
selected_list = ds_list_create(); //for box select
copy_list = ds_list_create(); //for ctrl+c


onlist = 0; // 0 = objects; 1 = enemies; 2 = assets

bg_tiles = ds_list_create()
ds_list_copy(bg_tiles, obj_recorder.bg_tiles)
bg_tiles_list_size = ds_list_size(bg_tiles)
asset_layer_over = layer_get_id("bgassets_over")
asset_layer_under = layer_get_id("bgassets_under")
current_asset_layer = asset_layer_over;

//global.farsprite = bg_tiles[| 1] //which sprite in the bg folder to use
//global.middlesprite = bg_tiles[| 1]
//global.nearsprite = bg_tiles[| 1]
//global.ontopsprite = bg_tiles[| 1]


sx = 0; //x and y of spawned things
sy = 0;

deletex = 0; //for the deletion box
deletey = 0;

state = 0;
selection = 0; //mousewheel menu
menusize = 9; //how many icons shown at once, "size" is the size of the list of placeables
	//NOT HOW MANY THERE ARE TOTAL, 
showmenu = 0; //how far down the menu you are scrolled, changes what is shown
angle = 0;

baby = noone; //temp holding variable whwen highlighting objs
helppage = 0; //for custom room f1 menu

//camw = camera_get_view_width(view_camera[0])
//camh = camera_get_view_height(view_camera[0])
save_file = ds_list_create();

#region platform lists
platform_list = ds_list_create()
ds_list_add(platform_list,
-10,
obj_cheese,
obj_oneway,
obj_dropplatform,
obj_slideplatform,
obj_wind,
obj_pickup,
obj_goal,
obj_turncamera,
obj_trigger,
obj_camerazoom_trigger,
obj_swingpole,
obj_deathplane,
obj_screw,
obj_screwplat,
obj_jumpywater,
obj_bouncepad,
obj_crusher,
obj_movingplatform,
obj_appearingplatform,
)
platform_names = ds_list_create()
ds_list_add(platform_names,
"Move Tool",
"Platform",
"One-way Platform",
"Dropping Platform",
"Slide Platform",
"Wind",
"Pickup",
"Goal",
"Turn Camera",
"Appear Trigger",
"Zoom Trigger",
"Swing Pole",
"Death Plane",
"Screw",
"Screw Platform",
"Water",
"Jump Pad",
"Crusher",
"Moving Platform",
"Flipping Platform",
)

platform_icons = ds_list_create()
ds_list_add(platform_icons,
spr_mouseicon,
spr_squareyellow,
spr_onewayicon,
spr_dropicon,
spr_slideplatform,
spr_windicon, 
spr_pickupicon,
spr_goalicon,
spr_cameraturnicon,
spr_trigger,
spr_zoomtrigger,
spr_swingpole,
spr_skullicon,
spr_screw,
spr_bg_grey,
spr_bg_lightblue,
spr_bg_lightblue,
spr_crusher,
spr_movingplatformicon,
spr_flippyicon,
)

platform_list_size = ds_list_size(platform_list)
#endregion

#region enemy lists
enemy_list = ds_list_create()
ds_list_add(enemy_list,
-10,
obj_bspawnersingle,
obj_bspawner,
obj_fire,
obj_ham,
obj_chaser,
obj_beeline,
obj_pendulum,
obj_ratgod,
obj_birddanger,
obj_warningbox,
obj_drainpaw,
obj_splatspawner,
obj_cactus,
)
enemy_names = ds_list_create()
ds_list_add(enemy_names,
"Move Tool",
"Balloon",
"Balloon Spawner",
"Fire Enemy",
"Flying Fire Enemy",
"Unhittable Chaser",
"Hittable Chaser",
"Pendulum Enemy",
"Rat God",
"Bird Danger Zone",
"Bird Strike(use with trigger)",
"Cat Paw(use with trigger)",
"Splat Spawner",
"Cactus",
)

enemy_icons = ds_list_create()
ds_list_add(enemy_icons,
spr_mouseicon,
spr_balloonicon,
spr_bspawnericon,
spr_fire,
spr_ham,
spr_chasericon,
spr_beelineicon,
spr_pendulumicon,
rg_ratgod1,
spr_birddanger,
spr_birdboss2,
spr_catpaw,
spr_splat,
spr_cactus,
)

enemy_list_size = ds_list_size(enemy_list)

#endregion


#region glitchy lists
glitchy_list = ds_list_create()
ds_list_add(glitchy_list,
-10,
obj_bspawnersingleBLUE,
obj_bspawnersinglePINK,
obj_warp,
obj_appearcheese,
obj_sewerratidle,
obj_sewerrat,
obj_sewerratjump,
obj_sewerratsword,
obj_speed_trigger,
)
glitchy_names = ds_list_create()
ds_list_add(glitchy_names,
"Move Tool",
"Fleeing Balloon",
"Slingshot Balloon",
"Warp Up",
"Appearing Platform",
"Mob Idle",
"Mob Dash",
"Mob Jump",
"Mob Sword",
"Speed Trigger",
)

glitchy_icons = ds_list_create()
ds_list_add(glitchy_icons,
spr_mouseicon,
spr_balloonblue,
spr_slingshot,
spr_bg_glassy,
spr_appearicon,
spr_mobdead,
spr_mobdead,
spr_mobdead,
spr_mobdead,
spr_speedtrigger,
)

glitchy_list_size = ds_list_size(glitchy_list)
#endregion


size = platform_list_size ; //initial size of the sidebar

//cam_h = camera_get_view_height(view_camera[0])

custombg = ds_list_create()
customfg = ds_list_create()
//ds_list_copy(custombg, obj_recorder.custombg)
//ds_list_copy(customfg, obj_recorder.customfg)
ds_list_add(custombg, global.farsprite, global.middlesprite, global.nearsprite);
ds_list_add(customfg, global.ontopsprite)


#region background

 backie = instance_create_depth(0,0, 0, obj_background)
 fourie = instance_create_depth(0,0, 0, obj_foreground)

//with backie {ds_list_copy(lay_order, obj_recorder.custombg)}
//with fourie {ds_list_copy(lay_order, obj_recorder.customfg)}
#endregion