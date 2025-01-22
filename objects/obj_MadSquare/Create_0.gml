/// @description Insert description here
// You can write your code in this editor
var bub = instance_create_layer(x, y, layer, obj_cameraman) //make the camera follow mad rat
bub.targetzoom = 1.5
angel = 0 //for sliding platforms

#region timer, battery, ...

	battery_max_charge = 500; // max charge
	battery_charge = battery_max_charge; //current charge
	battery_charge_showing = battery_charge; //current charge
	pickup_strength = 25; //how much is restored on getting a pickup
	death_cost = 10; //how much charge is taken for dying
	battery_size = 1; //battery size, for bumping to the beat
	battery_bulge = 0; // added to battery size
	
	max_enemy_collision_timer = 3; //if you touch an enemy for X frames, die
	enemy_collision_timer = max_enemy_collision_timer; //for keeping track of ^^
	
	max_respawn_positioning_timer = 300;
	respawn_positioning_timer = max_respawn_positioning_timer;
	
	position_of_last_hit = [x,y];
#endregion

#region animation modes

#region emotes
	sshrug = asq_mr_shrug; //always parts animation
	sshrug2 = asq_mr_shrugext; //always parts animation
	showsthat = asq_mr_howsthat; //level end pose
	howsthat = false; //if seq should loop, put the seq index here, false if no loop
	spaws = asq_mr_paws; // hand on chest pose
	scheer = asq_mr_cheer; //cheering pose, loop
	sshocked1 = asq_mr_shocked; //shocked pose, single
	sshocked2 = asq_mr_shockedext; //shocked pose, single
	sheadclutch = asq_mr_headclutch; //shocked pose, loop
	sangry1 = asq_mr_angry; //shocked pose, loop
	sangry2 = asq_mr_angryext; //shocked pose, loop
	sdemon = asq_mr_demon; //demon's wrath combo, single
	sflurry = asq_mr_flurry; //jojo stand rush, loop
	stired = asq_mr_tired; //stands tired, loop
	spointlaugh = asq_mr_pointlaugh; //loop
	scrossed = asq_mr_crossed; //loop
	shumph = asq_mr_humph; //loop
	strip1 = asq_mr_trip1; //single
	strip2 = asq_mr_trip2; //loop
	sgameover = asq_mr_gameover; //loop
	sturnback1 = asq_mr_backemote1; //single
	sturnback2 = asq_mr_backemote2; //loop
	sstomp1 = asq_mr_stomp1; //single
	sstomp2 = asq_mr_stomp2; //loop
	sscared1 = cs_mr_fallback
	sscared2 = cs_mr_fallbackext
	sevil = asq_mr_evil; //loop
	
	if global.animationmodes == 1 //parts mode emotes
	{
		showsthat = sq_mr_howsthat;
	}
#endregion
dash_animation_list = ds_list_create()
drop_animation_list = ds_list_create()
if global.animationmodes = 0 { //parts
	scharge = asq_mr_charge
	sdash = asq_mr_dashair
	sdrop = asq_mr_drop
	sduck = asq_mr_duck
	sidle = asq_mr_idle
	sjump = asq_mr_jump
	spush = asq_mr_push
	sspin = asq_mr_spin
	swalk = asq_mr_walk
	swalljump = asq_mr_walljump
	sslide = asq_mr_slide;
	
	if obj_recorder.dashanim_array[0] ds_list_add(dash_animation_list, asq_mr_dashdash)
	if obj_recorder.dashanim_array[1] ds_list_add(dash_animation_list, asq_mr_dashbash)
	if obj_recorder.dashanim_array[2] ds_list_add(dash_animation_list, asq_mr_dashsonic)
	if obj_recorder.dashanim_array[3] ds_list_add(dash_animation_list, asq_mr_dashsugar)
	if obj_recorder.dashanim_array[4] ds_list_add(dash_animation_list, asq_mr_dashgorilla)
	
	ds_list_add(drop_animation_list, asq_mr_drop2, asq_mr_drop3, asq_mr_drop4); 
	}
if global.animationmodes = 1 
	{ //solids
	scharge = sq_mr_charge
	sdash = sq_mr_dash
	sdrop = sq_mr_drop
	sduck = sq_mr_duck
	sidle = sq_mr_idle
	sjump = sq_mr_jump
	spush = sq_mr_push
	sspin = sq_mr_spin
	swalk = sq_mr_walk
	swalljump = sq_mr_walljump
			sslide = sq_mr_idle; //need to make still
						
	ds_list_add(dash_animation_list, sq_mr_dash) //only 1 solid dash animation... yet
	
	ds_list_add(drop_animation_list, sq_mr_drop); 
	}
	
				dash_list_length = ds_list_size(dash_animation_list)
				dash_anim_count = 0; //after animations are added
				dropcounter = 0; didyoujustdroponanenemy = false;
#endregion
#region particles
	
	part_layer = layer_create(-1000, "particle_layer")
	partsys = part_system_create_layer("particle_layer", false)
	
	part_lines = part_type_create()
	part_type_alpha1(part_lines, 0.5)
	part_type_life(part_lines, 30, 50)
	part_type_size(part_lines, 2,2, -0.02, 0.05)
	part_type_sprite(part_lines, spr_p_line, false, false, false)

#endregion
image_alpha = 0;

indefatigable = false; //true for infinity battery

scaleall = 0.5; //scale dash power and stuff, for shrinking in the room editor
//depth--; //so madrat draws on top of other stuff

state = 99; //mostly unused, except level editor, 
asdf=0
time = 0.2; //how often event3 goes off, step event

jumps = 2
charges = 1;
dashes = 1

timer = 0;

walkpower = 3;
walking = 0;

action_time = 30; ///?????????? 
// homing_timer init value

rotation = 0; //for drawing

vsp = 0
hsp = 0
initgrav = 0.7*scaleall
grav = initgrav;

gusth = 0;
gustv = 0;

facing = 1;
wasfacing = 1;

chargepower = 5*scaleall;
dashpower = 40*scaleall
jumppower = 25*scaleall
doublejumppower = 12*scaleall
gost = 10 //get off slide timer, max
getoffslide = gost; //current

hsliding = 0; //like dashing, but sliding
vsliding = 0; //like dashing, but sliding
angel = 0; //angle of slide animation
dashing = 0; //sepperate from hsp, so can be manipulated independantly
charge = 0; //'stores' charge
slowby = 0.1*scaleall //lerp value
init_dashtimer = 20;
dashtimer = 0;
init_wjtimer = 25;
wjtimer = 0; //cooldown on chainging direction, for after walljumps
init_chargetimer = 20;
chargetimer = 0;

homingtimer = 0; //for homing attack
homing_range = 400;
homing_target = noone;
draw_targ_timer_init = 100;
draw_targ_timer = 300;

seq = layer_sequence_create(layer, x, y, sidle) //start with idle animation
scale = 1;
layer_sequence_xscale(seq, scale)
layer_sequence_yscale(seq, scale)