
var doy = 650;

ds_list_add(que,

[scr_makedummy, 200,doy, asq_mr_crossed, asq_mr_crossed, 1, 1.5],
[scr_makedummy, 1100,doy-200, csh_idle, csh_idle, -1, 1.2],
[scr_changevar, obj_seqdummy, 1, "float", true ],
[scr_textbox, 300, doy-400, "We can hide in here, for now.", snd_madtalk, global.ratname],
[scr_changedummyseq, 1, csh_magnifying, csh_magnifying, -1],
[scr_textbox, 1000, doy-400, "Even better, "+string(global.ratname) + "!", snd_zap, global.heartname],
[scr_textbox, 1000, doy-400, "This hole leads back into the lab.", snd_zap, global.heartname],
[scr_tossitem, spr_magnifying, 1000, doy-200, 0.5, 45, 15, -10],
[scr_changedummyseq, 1, csh_yousee, csh_yousee, -1],
[scr_changeheartface, h_face4],
[scr_textbox, 1000, doy-400, "So let's go!", snd_zap, global.heartname],
[scr_csplaysound, snd_warioland4,1],
[scr_wait, 100],
[cs_camerazoom, 0, -0.002],
[scr_wait, 200],
[scr_endcutscene, L9],
)