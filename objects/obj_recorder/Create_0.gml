/// @description Insert description here
/// @description Insert description here
// You can write your code in this editor

//room_goto(TheTestRoom)
small_note_pitch = 0.8
controller_in = 0;
ley = layer_create(-500, "recorder_layer")
partlay = layer_create(100, "underparticles")
layer = ley
fuckmeDeltaTime = 0;
global.zoom = 1;
asdf = 0; // for onbeat's 'step' event
//alarm[3] = 3; //visual culling, breaks for oneways because they
/*
#region custom backgrounds

	//create custom background
	 sp1 = spr_blank
	 sp2 = spr_blank
	 sp3 = spr_blank
	 sp4 = spr_blank
	if file_exists("bg_far.png")  sp1 = sprite_add("bg_far.png", 1, false, false, 0,0)
	if file_exists("bg_middle.png")  sp2 = sprite_add("bg_middle.png", 1, false, false, 0,0)
	if file_exists("bg_near.png")  sp3 = sprite_add("bg_near.png", 1, false, false, 0,0)

	if file_exists("bg_ontop.png")  sp4 = sprite_add("bg_ontop.png", 1, false, false, 0,0)

custombg = ds_list_create()
ds_list_add(custombg,
sp1,
sp2, 
sp3, 
)
customfg = ds_list_create()
ds_list_add(customfg, sp4,)


#endregion
*/
#region custome bg asset tile sprites

	bg_tiles = ds_list_create() //holds the sprites
	ds_list_add(bg_tiles, spr_mouseicon)
	
	var directory = working_directory + "bg tiles/"
	var fname = file_find_first(directory + "*.png", 0) //get filepath <-- first, instead of next
	if fname != "" {
	var get = directory + fname
	var tempsprite = sprite_add(get, 1, false, true, 0, 0) //get sprite
		var xorg = sprite_get_width(tempsprite)/2 //reorient anchor point
		var yorg = sprite_get_height(tempsprite)/2
	sprite_replace(tempsprite, get, 1, false, false, xorg, yorg)
	ds_list_add(bg_tiles, tempsprite);  //add to list
	}
	repeat (999) {
		var directory = working_directory + "bg tiles/"
		var fname = file_find_next() //get filepath <-- next, instead of first
		if fname == "" break;
		var get = directory + fname
		var tempsprite = sprite_add(get, 1, false, true, 0, 0) //get sprite
			var xorg = sprite_get_width(tempsprite)/2 //reorient anchor point
			var yorg = sprite_get_height(tempsprite)/2
		sprite_replace(tempsprite, get, 1, false, false, xorg, yorg)
		ds_list_add(bg_tiles, tempsprite);  //add to list
	}

#endregion
#region options
seefps = false; 
mainmenuselect = -1; //main menu up/dow
story_level_selected = 0; //story mode left/right
instorymode = false; //true if you're in story, for advancing to next level on level end
input_initialize()

#region bpm snappin
BPM = 60;
snap_to_nearest = 0;
/*
		snap to nearest (1/ snap)th note
		[1/1 = full beat, 1/4 = quarter note]...
*/

bpmsquare_size = 64; 
bpmsquare_top = 360;
bpmsquare_left = 450;

snapsquare_size = 64;
snapsquare_top = bpmsquare_top;
snapsquare_left = 1200;

volsquare_size = 64;
volsquare_top = 45;
volsquare_left = 350;




#endregion

#region  load keybindings + volume + animation options
ini_open("keybindings.ini")

	//keyboard inputs
	global.keyLeft_kb = ini_read_real("keyboard", "left", vk_left)
	global.keyRight_kb = ini_read_real("keyboard", "right", vk_right)
	global.keyUp_kb = ini_read_real("keyboard", "up", vk_up)
	global.keyDown_kb = ini_read_real("keyboard", "down", vk_down)
		global.keyCharge_kb = ini_read_real("keyboard", "charge", ord("W"))
		global.keyDrop_kb = ini_read_real("keyboard", "drop", ord("A"))
		global.keyJump_kb = ini_read_real("keyboard", "jump", ord("S"))
		global.keyDash_kb = ini_read_real("keyboard", "dash", ord("D"))

	//gamepad inputs
	global.keyLeft_gp = ini_read_real("gamepad", "left", gp_padl)
	global.keyRight_gp = ini_read_real("gamepad", "right", gp_padr)
	global.keyUp_gp = ini_read_real("gamepad", "up", gp_padu)
	global.keyDown_gp = ini_read_real("gamepad", "down", gp_padd)
		global.keyCharge_gp = ini_read_real("gamepad", "charge", gp_face4)
		global.keyDrop_gp = ini_read_real("gamepad", "drop", gp_face3)
		global.keyJump_gp = ini_read_real("gamepad", "jump", gp_face1)
		global.keyDash_gp = ini_read_real("gamepad", "dash", gp_face2)
		
	songvolume = ini_read_real("settings", "volume", 0.5); //song volume
	global.animationmodes = ini_read_real("settings", "animationmode", 0);  //parts or whole sprites
	
	dashanim_array[0] = ini_read_real("dash_anims", "dash", 1)
	dashanim_array[1] = ini_read_real("dash_anims", "bash", 1)
	dashanim_array[2] = ini_read_real("dash_anims", "sonic", 1)
	dashanim_array[3] = ini_read_real("dash_anims", "sugar", 1)
	dashanim_array[4] = ini_read_real("dash_anims", "gorilla", 1)

	//experimental slot 2 options array
	opArray2d[2][0] = ini_read_real("settings", "showheart", true)
	opArray2d[2][1] = ini_read_real("settings", "autohit", true)
	opArray2d[2][2] =  ini_read_real("settings", "invincible", false)
	opArray2d[2][3] =  ini_read_real("settings", "timeron", true)
	opArray2d[2][4] =  ini_read_real("settings", "microgames", true)
	opArray2d[2][5] =  ini_read_real("settings", "confetti", true)
	opArray2d[2][6] =  ini_read_real("settings", "red notes", true)
	opArray2d[2][7] =  ini_read_real("settings", "miss remove", true)
	opArray2d[2][8] =  ini_read_real("settings", "black notes", true)
	
	global.quizarray[0] = ini_read_string("quiz", "name", "Rad Matt")
	global.quizarray[1] = ini_read_string("quiz", "food", "Smaller Rats")
	global.quizarray[2] = ini_read_string("quiz", "important", "Larger Rats")

ini_close()


update_scheme();     //pass in new keys from keybindings.ini, without this they're all default

#endregion

updown = 0; 
leftright = 0; 

ambinding = 0; //true if currently awaiting keypress

slots = array_length(opArray2d); //keybindings, animation modes, exit

//names of the keybinding stuff
options = [
"Left",
"Right",
"Up",
"Down",
"Charge",
"Drop",
"Jump",
"Dash",
]

#endregion
#region corner heart
scr_chseqlist() //for seq order, as combo increases
seqscale = 1; //size of heart, relative, increases on beat
corner_heart_overwrite = 0; //if there's a seq in here, do that instead of seqlist
//this gets reset to true in roomtrans, just because
#endregion
#region custom sprites

#region enemies
enemyspritelist = ds_list_create()
ds_list_add(enemyspritelist, 
 "spr_cactus",
 "spr_chaser1",
 "spr_chaser2",
 "spr_balloon",
 "spr_beeline1",
 "spr_beeline2",
 "spr_br_larm1",
 "spr_br_larm2",
 "spr_br_rarm1",
 "spr_br_rarm2",
 "spr_br_body1",
 "spr_br_body2",
 "spr_br_heart",
 "spr_br_heart_smear",
 "spr_fire",
 "spr_ham",
 "spr_pendulum",
 "rg_ratgod1",
 "rg_ratgod2",
 "rg_meteor",
 "rg_scythe",
 "rg_pillar",
 "rg_starstorm",
 "spr_splat",
 "spr_talon",
)

var size = ds_list_size(enemyspritelist)
for (var i = 0; i < size; i++)
{
	scr_customspriteload("enemies/", enemyspritelist[| i])
}
ds_list_destroy(enemyspritelist)
#endregion

#region mad rat parts
madratpartslist = ds_list_create()
ds_list_add(madratpartslist, 
"mr_arm2",
"mr_armscrossed",
"mr_ass",
"mr_ass2",
"mr_ass3",
"mr_back",
"mr_spin",
"mr_body1",
"mr_body2",
"mr_body3",
"mr_body4",
"mr_body5",
"mr_body6",
"mr_face1",
"mr_face2",
"mr_face3",
"mr_face4",
"mr_face5",
"mr_face6",
"mr_face7",
"mr_face8",
"mr_face9",
"mr_face10",
"mr_face11",
"mr_face12",
"mr_face13",
"mr_face14",
"mr_face15",
"mr_head1",
"mr_head2",
"mr_leg1",
"mr_head_back",
"mr_lhand1",
"mr_lhand2",
"mr_lhand3",
"mr_lhand4",
"mr_lhand5",
"mr_lhand6",
"mr_lhand7",
"mr_lhand8",
"mr_lhand9",
"mr_lhand10",
"mr_lhand11",
"mr_rhand1",
"mr_rhand2",
"mr_rhand3",
"mr_rhand4",
"mr_rhand5",
"mr_rhand6",
"mr_rhand7",
"mr_rhand8",
"mr_rhand9",
"mr_rhand10",
"mr_mouth_open",
"mr_piece_of_arm",
"mr_shoulder",
"mr_tail1",
"mr_tail2",
"mr_tail3",
"mr_tail4",
"mr_lfoot",
"mr_lfoot2",
"mr_lfoot3",
"mr_rfoot",
"mr_rfoot2",
"mr_rfoot3",
"spr_p_spin",
"spr_p_charge",
"spr_p_line",
"mr_stomponthis",
)

var size = ds_list_size(madratpartslist)
for (var i = 0; i < size; i++)
{
	scr_customspriteload("madrat parts/", madratpartslist[| i])
}
ds_list_destroy(madratpartslist)
#endregion

#region mad rat solids
madratsolidslist = ds_list_create()
ds_list_add(madratsolidslist, 
"mr_2emote1",
"mr_2emote2",
"mr_charge1",
"mr_charge2",
"mr_charge3",
"mr_charge4",
"mr_dash1",
"mr_dash2",
"mr_drop1",
"mr_duck1",
"mr_duck2",
"mr_idle1",
"mr_jump1",
"mr_push1",
"mr_spin1",
"mr_walk1",
"mr_walk2",
"mr_walk3",
"mr_walljump",
)

var size = ds_list_size(madratsolidslist)
for (var i = 0; i < size; i++)
{
	scr_customspriteload("madrat solids/", madratsolidslist[| i])
}
ds_list_destroy(madratsolidslist)
#endregion

#region heart
heartpartlist = ds_list_create()
ds_list_add(heartpartlist, 
"h_arm1",
"h_arm2",
"h_armscrossed",
"h_body1",
"h_body2",
"h_eyelid1",
"h_eyelid2",
"h_eyelid3",
"h_face1",
"h_face2",
"h_face3",
"h_face4",
"h_face5",
"h_face6",
"h_face7",
"h_face8",
"h_face9",
"h_face10",
"h_face11",
//12 and 13 are animated
"h_face14",
"h_face15",
"h_hand1",
"h_hand2",
"h_hand3",
"h_hand4",
"h_hand5",
"h_hand6",
"h_hand7",
"h_hand8",
"h_hand9",
"h_hand10",
"h_hand11",
"h_hand12",
"h_hand13",
"h_hand14",
"h_hand15",
"h_magbody",
"h_tambourine",
"h_tambourine_hand1",
"h_tambourine_hand2",
)

var size = ds_list_size(heartpartlist)
for (var i = 0; i < size; i++)
{
	scr_customspriteload("heart parts/", heartpartlist[| i])
}
ds_list_destroy(heartpartlist)
#endregion

#region ui
uilist = ds_list_create()
ds_list_add(uilist, 
"middleheart",
"middlebars",
"redbar1",
"redbar2",
"whitebar",
"bluebar1",
"bluebar2",
"blackbar",
"spr_okay",
"spr_great",
"spr_miss",
"spr_greencircle",
"spr_pickup",
"spr_confetti",
"spr_swingpole",
)

var size = ds_list_size(uilist)
for (var i = 0; i < size; i++)
{
	scr_customspriteload("ui/", uilist[| i])
}
//special exception for poppers, because it's animated
	var directory = working_directory + "ui/"
	var fullpath = directory + "spr_poppers" + ".png"
	if file_exists( fullpath ) {
		var tempsprite = sprite_add(fullpath, 4, false, false, 0, 0)
		var xorg = sprite_get_width(tempsprite)/2
		var yorg = sprite_get_height(tempsprite)/2
	sprite_replace(asset_get_index("spr_poppers"),fullpath, 4, false, false, xorg, yorg)}
	//sprite_delete(tempsprite)

ds_list_destroy(uilist)
#endregion

#endregion //end of custom sprites
#region story list, seq

storylevellist = [

Cfunni, //0

C1, //1
C2,
C3,
C3e1,
C4, //5
C5,
C6,
C6e1,
C7,
C8, //10
//C8e1, 
C9,
C10,
C11,
C12,
C13,
C14,
C15,
C16,
C17,

CE1, //previously, the credits, better look around
CE2, //a pod?
CE3, //it's malfunctioning!
CE4, //a meteorite?
CE5, //shut up!
CE6, //memory crawl
CE7, //....frequency
CE8, //mad dash
CE8e1, //accidental ai
CE9, // final battle
CE10, // credits

]
storysonglist = [

"Wretchedness of Life.ogg", //funni

"Wretchedness of Life.ogg", //1
"I Heart You.ogg",//2
"Machine Remix.ogg",//3
"Drawing Theme.ogg",//3e1
"bad feeling.ogg",//4
"glow.ogg",//5
"UK Exploration.ogg", //6
"Alternate World The Fairy Queens Domain.ogg", //6e1
"Honest Hearts.ogg", //7
"Cool Bird.ogg",//8
//"Cool Bird.ogg",//8e1
"rat survivor.ogg", //9
"gigabyte grounds.ogg", //10
"automatic action.ogg", //11
"Mecha City 4.ogg", //12
"Pristine Office.ogg", //13
"RRThiel - VS GREEN BIKER DUDE.ogg", //14
"Digital Area.ogg", //15
"selfsimilarity_shorter.ogg", //16
"You Are Mine.ogg", //17


"Old House.ogg", //18				ce1
"Macuilxochitl.ogg", //19			ce2
"Scorching Back.ogg", //20			ce3
"Here We Are.ogg", //21			ce4
"Undying.ogg", //22			ce5 
"Crazy.ogg", //23			ce6
"Soul to Burn.ogg", //24			ce7
"GO BACK 2 YOUR RAVE.ogg", //25			ce8
"Proof of the Existence.ogg", //26			ce8e1
"Indefatigable.ogg", //27			ce9

"Drawing Theme.ogg", //28			ce10



//".ogg", //
//".ogg", //
//".ogg", //
//".ogg", //
//".ogg", //
//".ogg", //
//".ogg", //



//"Drawing Theme.ogg", //

]

seq = layer_sequence_create(layer, x, y, seq_blank)
seqscale = 1;
#endregion

#region misc globals, hold to scroll timer

global.ratname = "Lab Rat"
global.heartname = "Arty"
global.virusname = "Virus"

global.skipammount = 30; //for skip notes, how large the skip is
skipwait= 0;

hold_to_scroll_timer_max = 60;
hold_to_scroll_timer_cooldown = 12;
hold_to_scroll_timer = hold_to_scroll_timer_max;

recalpha = 1; //for notes alpha
#endregion

#region black transition


black_transition = 0; //for room transitions
//   0 = off
// lerp 0 to 100 = cover screen left to right
// lerp 100 to 200 = open up screen from left (reset to 0 when done)
black_transition_state = 0; // so can have transition happening while in another state
// 1 = 0 to 100, 2 = change room
//3 = 100 to 200, 4 = reset state and value to 0
going_to_room = Room1; //which room to switch to when transition happens
going_to_state = 0; //which state to switch to when transition happens

#endregion
#region f2 menu (used to only be in level_editor, but breaks rewind saving)
global.farscale = 1
global.middlescale = 1
global.nearscale = 1
global.ontopscale = 1

global.farscroll = 1
global.middlescroll = 0.5
global.nearscroll = 0
global.ontopscroll = -0.1

global.platformalpha = 1
global.onewayalpha = 1
global.slidealpha = 1
#endregion
gamespeed = game_get_speed(gamespeed_fps)

bbox_top_fix = y - 55 //holds the original size of the bars + heart at bottom, incase sprites were changed
bbox_bottom_fix = y + 55
bbox_right_fix = x + 100
bbox_left_fix = x - 100

//all scuffed
rewind_path = "rewinds/"
rewind_frequency = gamespeed; //save every ..... frames
rewind_timer = 0; //counts the frames until saving the rewinds
rewind_path_list = ds_list_create(); // stores the rewind file paths for easy reference
rewind_leftright_select = 0;


alarm[8] = 3; //set bbox references for drawGUI, incase of custom sprites

#region particles
global.partsys = part_system_create_layer(layer, true)
global.under_partsys = part_system_create_layer(partlay, true)

// Setup:
global.part_cloud = part_type_create() //smoke
part_type_shape(global.part_cloud, pt_shape_cloud)
part_type_life(global.part_cloud, 330, 470)
part_type_color1(global.part_cloud, c_ltgray)
part_type_size(global.part_cloud, 2,3, 0.1, 0.05)
part_type_direction(global.part_cloud, 88,92, 0, 0)
part_type_speed(global.part_cloud, 4, 3, 0, 0.1)
part_type_alpha2(global.part_cloud, 0.2, 0)
part_type_orientation(global.part_cloud, 0, 360, 0, 1, 0)
part_type_gravity(global.part_cloud, 0.01, 90)

global.part_raincloud = part_type_create() //raincloud
part_type_shape(global.part_raincloud, pt_shape_cloud)
part_type_life(global.part_raincloud, 111, 222)
part_type_color1(global.part_raincloud, c_dkgray)
part_type_size(global.part_raincloud, 2,3, 0, 0)
part_type_alpha2(global.part_raincloud, 1, 0)
part_type_orientation(global.part_raincloud, 0, 360, 0, 1, 0)

global.part_patarain = part_type_create() //patapon rain
part_type_shape(global.part_patarain, pt_shape_line)
part_type_life(global.part_patarain, 33, 44)
part_type_color1(global.part_patarain, c_white)
part_type_size(global.part_patarain, .5, .5, 0, 0)
part_type_alpha2(global.part_patarain, 0.5, 0)
part_type_speed(global.part_patarain, 22, 22, 1, 0)
part_type_direction(global.part_patarain, 270,270, 0, 0)
part_type_orientation(global.part_patarain, 90, 90, 0, 0, 0)

global.part_hole = part_type_create() //final boss, black spots
part_type_shape(global.part_hole, pt_shape_disk)
part_type_life(global.part_hole, 44, 44)
part_type_color1(global.part_hole, c_black)
part_type_size(global.part_hole, 0.2, 0.8, 0, 0)

global.part_triangles = part_type_create() //shadow, pickup distribution
part_type_sprite(global.part_triangles, spr_pickup, false, false, false)
part_type_alpha2(global.part_triangles, 1, 0)
part_type_size(global.part_triangles, 2, 4, -0.05, 0.2)
part_type_life(global.part_triangles, 120, 140)
part_type_gravity(global.part_triangles, 0, 270)
part_type_speed(global.part_triangles, 25, 35, -0.8, 0)
part_type_direction(global.part_triangles, 0, 359, 0, 0)
part_type_orientation(global.part_triangles, 0, 359, 1, 0, false)


global.part_trail = part_type_create() //missile trail
part_type_shape(global.part_trail, pt_shape_cloud)
part_type_life(global.part_trail, 30, 30)
part_type_color1(global.part_trail, c_ltgray)
part_type_size(global.part_trail, 1, 1, 0, 0.05)
part_type_direction(global.part_trail, 88,92, 0, 0)
part_type_speed(global.part_trail, 4, 3, 0, 0.1)
part_type_alpha2(global.part_trail, 0.2, 0)
part_type_orientation(global.part_trail, 0, 360, 0, 1, 0)
part_type_gravity(global.part_trail, 0.01, 90)
	
	
	global.part_sparks = part_type_create() //blue sparks, respawn, boss tele
	part_type_shape(global.part_sparks, pt_shape_spark)
	part_type_color1(global.part_sparks, c_aqua);
	part_type_alpha2(global.part_sparks, 0.7,0)
	part_type_orientation(global.part_sparks, 0, 359, 0, 10, true)
	part_type_size(global.part_sparks, 3,4, -0.05, 0.1)
	part_type_life(global.part_sparks, 30, 50)
	part_type_direction(global.part_sparks, 0, 359, 0, 10)
	part_type_speed(global.part_sparks, 5,10, -0.1, 0)
	
	global.part_laserline = part_type_create() //sewer laser trail
	part_type_shape(global.part_laserline, pt_shape_square)
	part_type_color1(global.part_laserline, c_white);
	part_type_alpha2(global.part_laserline, 1,0)
	//part_type_orientation(global.part_laserline, 0, 359, 0, 10, true)
	part_type_size(global.part_laserline, 0.7, 0.7, 0, 0)
	part_type_life(global.part_laserline, 30, 30)
	//part_type_direction(global.part_laserline, 0, 359, 0, 10)
	//part_type_speed(global.part_laserline, 1, 2, 0, 0)
	
global.part_rain = part_type_create() //???????
part_type_shape(global.part_rain, pt_shape_line)
part_type_color1(global.part_rain, c_white)
part_type_life(global.part_rain, 360, 370)
part_type_size(global.part_rain, 3,4, 0,0)
part_type_direction(global.part_rain, 270,270, 0, 0.5)
part_type_speed(global.part_rain, 4, 4, 0.1, 0)
part_type_alpha2(global.part_rain, 0.2, 0.2)
part_type_orientation(global.part_rain, 90, 90, 0, 1, 0)


global.beeline_part = part_type_create() //yellow triangles for beeline
part_type_sprite(global.beeline_part, spr_beeline2, false, false, false)
part_type_alpha2(global.beeline_part, 0.7,0)
part_type_size(global.beeline_part, 1,2, -0.05, 0.1)
part_type_life(global.beeline_part, 10,20)
part_type_direction(global.beeline_part, 0, 359, 0, 10)
part_type_speed(global.beeline_part, 0.5,1, -0.1, 0)

global.beeline_part_glitchy = part_type_create() //1 and 0 particles for beelines in L15+
part_type_sprite(global.beeline_part_glitchy, spr_beeline3, false, false, true)
part_type_alpha2(global.beeline_part_glitchy, 0.7,0)
part_type_size(global.beeline_part_glitchy, 1,2, -0.05, 0.1)
part_type_life(global.beeline_part_glitchy, 10,20)
part_type_direction(global.beeline_part_glitchy, 0, 359, 0, 10)
part_type_speed(global.beeline_part_glitchy, 0.5,1, -0.1, 0)

global.woodchip_part = part_type_create() //sword rat particles
part_type_sprite(global.woodchip_part, spr_woodchips, false, false, true)
part_type_alpha2(global.woodchip_part, 1,0.5)
part_type_size(global.woodchip_part, 2,3, -0.05, 0.1)
part_type_life(global.woodchip_part, 100, 200)
part_type_direction(global.woodchip_part, 0, 180, 0, 10)
part_type_speed(global.woodchip_part, 10, 15, -0.5, 0)
part_type_gravity(global.woodchip_part, 0.3, 270)
part_type_orientation(global.woodchip_part, 0, 359, 0, 0, false)


global.gear_part = part_type_create() //destroyed mob rat, arty in final boss
part_type_sprite(global.gear_part, spr_gears, false, false, true)
part_type_alpha2(global.gear_part, 1,0.5)
part_type_size(global.gear_part, 2,3, 0, 0.1)
part_type_life(global.gear_part, 100, 200)
part_type_direction(global.gear_part, 70, 110, 0, 10)
part_type_speed(global.gear_part, 10, 20, 0, 0)
part_type_gravity(global.gear_part, 0.5, 270)
part_type_orientation(global.gear_part, 0, 359, 0, 0, false)

global.water_part = part_type_create() //sewer, when water comes in
part_type_shape(global.water_part,pt_shape_explosion)
part_type_alpha2(global.water_part, 1, 0)
part_type_size(global.water_part, 2,3, 0, 0.1)
part_type_life(global.water_part, 99, 99)
part_type_gravity(global.water_part, 0.5, 270)
part_type_orientation(global.water_part, 0, 359, 0, 0, false)

global.tear_part = part_type_create() //arty's crying animation
part_type_shape(global.tear_part,pt_shape_explosion)
part_type_alpha2(global.tear_part, 1, 0)
part_type_color1(global.tear_part, c_aqua)
part_type_size(global.tear_part, 0.5, 0.7, 0, 0.1)
part_type_life(global.tear_part, 33, 44)
part_type_gravity(global.tear_part, 0.5, 270)
part_type_speed(global.tear_part, 7, 9, -0.1, 0)
part_type_orientation(global.tear_part, 0, 359, 0, 0.2, false)
part_type_direction(global.tear_part, 120, 130, 0, 0.1)

global.yelspark = part_type_create() //yellow sparks, for meteor, memory scenes
part_type_shape(global.yelspark,pt_shape_spark)
part_type_color1(global.yelspark,c_yellow)
part_type_alpha2(global.yelspark, 1, 0)
part_type_size(global.yelspark, 2,2, -0.1, 0.1)
part_type_life(global.yelspark, 77,88)
part_type_gravity(global.yelspark, 0.5, 270)
part_type_speed(global.yelspark, 9,9, 0, 0)
part_type_direction(global.yelspark, 45, 90, 0, 0)
part_type_orientation(global.yelspark, 0, 359, 0, 0, false)


global.holdspark = part_type_create() //yellow sparks, for meteor, memory scenes
part_type_shape(global.holdspark,pt_shape_spark)
part_type_color1(global.holdspark,c_yellow)
part_type_alpha2(global.holdspark, 1, 0)
part_type_size(global.holdspark, 1, 1, -0.1, 0.1)
part_type_life(global.holdspark, 20, 30)
part_type_speed(global.holdspark, 9,9, 0, 0)
part_type_direction(global.holdspark, 0, 359, 0, 0)
part_type_orientation(global.holdspark, 0, 359, 0, 0, false)

holdspark_sys = part_system_create()
part_system_automatic_draw(holdspark_sys, false) //so it can be drawn to gui


	global.part_leaf = part_type_create() //wind particle
	part_type_alpha1(global.part_leaf, 0.5)
	part_type_life(global.part_leaf, 30, 50)
	part_type_size(global.part_leaf, 2,2, -0.02, 0.05)
	part_type_sprite(global.part_leaf, spr_leaf, false, false, true)
	part_type_speed(global.part_leaf, 2,4, 1, 0)
	part_type_direction(global.part_leaf, 0, 0, 0, 0)
	part_type_orientation(global.part_leaf, 0, 0, 0, 0.5, true)
	
	global.part_sprinkler = part_type_create() //sprinkler water
	part_type_alpha1(global.part_sprinkler, 0.5)
	part_type_color1(global.part_sprinkler, c_aqua)
	part_type_shape(global.part_sprinkler, pt_shape_flare)
	part_type_life(global.part_sprinkler, 330, 350)
	part_type_size(global.part_sprinkler, 5,5,  0,0)
	part_type_speed(global.part_sprinkler, 20, 20, 0, 0)
	part_type_direction(global.part_sprinkler, 0, 0, 0, 0)
	part_type_orientation(global.part_sprinkler, 0, 0, 0, 0, true)
	part_type_gravity(global.part_sprinkler, 1, 270);
	
	global.part_bubble = part_type_create() //cryochamber bubbles
	part_type_alpha2(global.part_bubble, 0.7, 0)
	part_type_color1(global.part_bubble, c_white)
	part_type_shape(global.part_bubble, pt_shape_circle)
	part_type_life(global.part_bubble, 130, 150)
	part_type_size(global.part_bubble, 0.3, 0.4,  0, 0)
	part_type_speed(global.part_bubble, 5, 6, -0.01, 0)
	part_type_direction(global.part_bubble, 90, 90, 0, 0)
	
	global.shine = part_type_create() //shadow
	part_type_alpha3(global.shine, 0, 1, 0)
	part_type_shape(global.shine, pt_shape_spark)
	part_type_color1(global.shine, c_white)
	part_type_life(global.shine, 30, 30)
	part_type_size(global.shine, 2, 3, 0, 0)
	
#endregion

global.mr1 = -1 //level editor teleport points
global.mr2 = -1

global.level = 0; //for loading different custom levels from files, stores filename

//hoverover = 0; //while editing notes, this is the slot the mouse is over
ty = room_height/3 //for countdown timer
x = room_width/2

textcursor = ""; //for entering a new custom level name
cursortimer = 30;

songlist = ds_list_create() //for selecting songs
ds_list_add( songlist, file_find_first( working_directory + "songs/" + "\*.ogg", 0) )

do {var smile = file_find_next(); ds_list_add(songlist, smile) }
until (smile == "")
ds_list_delete(songlist, ds_list_size(songlist)-1) //get rid of blank slot from ""
file_find_close();

showingfrom = 0; //where in notelist to start showing notes from in editing
takemeback = 0; //holds where you showingfrom, before you started recording
	//also used to save your position in notelist, for pauseing during gameplay
notelist_velocity = 0; //for scrolling the notelist in editing, via mousedrag
mouse_xprevious = 0; //same

showtext = 4; //for the countdown
songselect = 0; //for song select menu, ALSO USED IN LEVEL SELECT
soseoffset = 0; // for the song selection menu's scrolling, ALSO USED IN LEVEL SELECT

state = -2; 

pause_menu_select = 0; // for the pause menu

timer=0; //used for the countdown ONLY
music = noone; //used to hold the streamed file
//stupidmusic = snd_blank; //for cutscene music, and stuff

grace = 24; //how many frames you have to input
active = 0; //distance to next note, 0 if more than grace/2

//4=big red, 2=small red
redcount=0; //how many reds ahead
redhit = 0; //how many red have been hit
lastred = false; //true if last note hit was red, for drawing
lastblue = false; //true if last note hit was blue, for drawing

editor_note_type = 1;
/* NOTE TYPES
1= WHITE
2 = RED
3 = BLUE
4 = ???? a big note?

-1 = ALREADY HIT, small red note, not used in calculating time
-2 = ALREADY HIT, big note, used 
-3 = ALREADY HIT, small blue note, functionally identical, just in case
-4 = INTROENDS
-6 = SKIP NOTE, invisible, skips next 30 frames
*/

dist = 2; //distance between notes, higher for faster incoming bars
onesec = ( (room_width/2 - sprite_width/2) / dist) / showtext  ; //how many frames
//to wait for countdown, designed around notes coming in from off screen

bulge = 0; //when you hit a note, and the heart pounds

notelist = ds_list_create(); //holds current notes

backup = ds_list_create(); //holds a copy of the whole song's notes

firstrecord = true; //the first time you end the recording, set songends, else dont
songends = 0; //position in song where it ends, in frames
songinst = noone; //holds active instance of song, from play_sound
introends = 0; //frames
songname = "song" //temporary holding variables
songfile = "song.ogg"
songpath = "songs/song.ogg"
beatmapfile = "song.txt"
beatmappath = "beatmaps/song.txt"



notespeed_height = 450 //where the notespeed dragbar is drawn, the top of it
tome = 0; //for passing into madsquare, as TIME, the timescale mad rat should run at until the next note

//if next note is more than 2 seconds away, treat as 2 seconds
maxsearch =240; //max # of slots ahead that will be searched for a note

roomlist = ds_list_create() //holds all rooms
scr_checkrooms() //adds custom rooms to roomlist

slowend_timer = 0; //for when you hit the goal and the music slows down
slowend_length = gamespeed/2; //how long the game should slow down
save_tome = 0; //saves the last tome value, for re-speeding everything up
spitch = 1; //song's speed

numearly = 0; //scoring
numlate = 0;
numgreat = 0;
nummiss = 0;

combo = 0;
maxcombo = 0;





