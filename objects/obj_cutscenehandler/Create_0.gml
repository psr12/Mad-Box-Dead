/// @description Insert description here
// You can write your code in this editor


x = cam_w /2;
y = cam_h /2;

if !instance_exists(obj_cameraman) instance_create(x,y,obj_cameraman)
gotoroom = L1

que = ds_list_create()

onscene = 0;

wait = false; //true while, for example, waiting on a textbox to be closed
	//if true, won't run the que of scripts

songinst = snd_blank;
	music = noone; //for streaming music
music_wobble = false;
//depth -= 300;

ratface = mr_face1;
heartface = h_face1;

pause = false;
opsel = 0;
ops = ["Resume", "Skip", "Quit to menu"]


fadeblack = 0;
blalpha = 0;

gfadeblack = 0;
gblalpha = 0;

