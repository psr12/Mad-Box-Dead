/// @description Insert description here
// You can write your code in this editor
quitting = 200;

ini_open("keybindings.ini")
	playmicrogames = ini_read_real("settings", "microgames", true)
ini_close()

if !playmicrogames room_goto(MainMenu)

hearts = 4;
heartnormalsize = 1;
heartsize = heartnormalsize;
heartpump = 0;
heartstasis = 1;

winsin = 0;

pageturn = -1;
ptimer = 0;
ptime = 10;
floornumber = 0;
///*
var _fx_struct = layer_get_fx("Effect_1");
var _param_names = fx_get_parameter_names(_fx_struct);

for (var i = 0; i < array_length(_param_names); i ++) {
    show_debug_message("Parameter " + string(i) + ": " + _param_names[i]);
}
//*/

shelfx = 1119
shelfy = 293

wall1x = 233
wall1y = 301

wall2x = 824
wall2y = 301

docx = 288
docy = 768
docrot = 0

table1x = 192
table1y = 672

table2x = 1280
table2y = 672

flask1x = 288
flask1y = 640

flask2x = 480
flask2y = 640

cagex = 806
cagey = 592

wheelx = 800
wheely = 608

bottlex = 1152
bottley = 672

sinetime = 0; //for bouncing objects
sineamp = 0;
sinemove = 0.01;

slidetime = 0; //for gamestate AkA sliding in
slideamp = 0;

gamestate = 0; //for sliding in everything
//0 = fully in, 1 = fully out


state = -2;

asdf = 0; //for setting off step event of microgames

start_time = get_timer();
time = get_timer() - start_time;
micros_per_sec = 60000000;

//set beats per minute
bpm = 120;
pitch = 1; //also controls game speed

div_4 = 0;

div_4_previous = div_4;

//Use the triggers to play sounds in musical time, (i.e. to play a sound every 
//quarter note- "if obj_midi_clock.div_4_trigger == true audio_play_sound(snd_sound, 1, 0);"
 
div_4_trigger = false;      //quarter note trigger

win = true;

waitforbeats = 3;

bossyet = false;

microlist = ds_queue_create()
ds_queue_enqueue(microlist, 

mg_pinned,
mg_trolley,
mg_tinycar, 
mg_hotplate,
mg_chomping, 
mg_swimming,
mg_doom, 

)
		
		


