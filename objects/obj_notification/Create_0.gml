/// @description Insert description here
// You can write your code in this editor


heartface = h_face1
ratface = mr_face1

image_alpha = 0;

layer = layer_create(-1000)

state = 0;

fadeblack = 0;
onscene = 0;
wait = 0; 

contact_wait = 180;

que = ds_list_create()

ds_list_add(que,

[cs_fadeblack, 0.8, 100],
[scr_wait,100],
[scr_notedummy, -200, -50, csh_hips, csh_hips, 1, 2, 1],
[scr_notedummy, 200, 0, sq_mb_idle, sq_mb_idle, -1, 2, 0],
[scr_wait,300],
[scr_changeheartface,h_face8],
[scr_notebox, -200, 0, "Blink motherfucker", snd_blinkmotherfucker, global.heartname],
[scr_endnotification],

)
