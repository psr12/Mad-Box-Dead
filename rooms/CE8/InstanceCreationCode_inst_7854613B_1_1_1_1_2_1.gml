
ds_list_add(que,
[cs_fadeblack, 1, 0],
[scr_makedummy, ph_1.x,ph_1.y, asq_mr_trip2, asq_mr_trip2, 1, 1.5],

[scr_wait, 100],
[cs_fadeblack, 0, 120],

[scr_changedummyseq, 0, asq_mr_tired],
[scr_textbox, ph_1.x,ph_1.y-400, @"This again, huh?", snd_madtalk, global.ratname],


[scr_changedummyseq, 0, asq_mr_dashdash],
[scr_moveobj, obj_seqdummy, 0, ph_2.x-200, ph_2.y, 5],
[scr_moveobj, obj_cameraman, 0, ph_2.x, room_height/2, 5],

[scr_wait, 260],

[scr_changedummyseq, 0, asq_mr_shocked, asq_mr_shockedext],
[scr_makedummy, ph_3.x, ph_3.y, sq_mb_idle, sq_mb_idle, -1, 1.5],

[scr_textbox,ph_3.x, ph_3.y-400, @"(i cannot move, i cannot speak. 
I cannot even think)", snd_clockwork, "..."],
[scr_changedummyseq, 0, cs_mr_humph],
[scr_changeratface, mr_face13],
[scr_textbox,ph_3.x, ph_3.y-400, @"(i am already dead.)", snd_clockwork, "..."],

[css_makeobj, ph_3.x, ph_3.y, obj_makegears, depth],
[scr_deleteobj, obj_seqdummy, 1],
[cs_playsound, snd_enemydeath2],

[scr_changedummyseq, 0, asq_mr_shocked, asq_mr_shockedext],
[scr_wait, 120*2],

[scr_changedummyseq, 0, cs_mr_humph],
[scr_changeratface, mr_face9],
[scr_textbox, ph_2.x-200,ph_2.y-400, @"Hmph!", snd_madtalk, global.ratname],

[scr_changedummyseq, 0, asq_mr_dashdash],
[scr_moveobj, obj_seqdummy, 0, ph_4.x-200, ph_4.y, 5],
[scr_moveobj, obj_cameraman, 0, ph_4.x, room_height/2, 5],

[scr_makedummy, ph_5.x, ph_5.y-50, csh_shrug, csh_shrug, -1, 1.5],
[scr_changeheartface, h_face3],

[scr_wait, 200],

[scr_changedummyseq, 0, asq_mr_humph],
[scr_changevar, obj_seqdummy, 1, "float", true],

[scr_wait, 120],
[scr_changedummyseq, 0, cs_mr_evil],
[scr_changeratface, mr_face9],
[scr_textbox, ph_4.x-200,ph_4.y-400, @"Arty! What are you doing?!
Get us out of here!", snd_madtalk, global.ratname],

[scr_textbox, ph_5.x,ph_5.y-400, @"(whenever I try to help, 
they die... I failed them... ) ", snd_zap, global.heartname],
[scr_textbox, ph_5.x,ph_5.y-400, @"(i can't do anything... 
maybe I should just die...)", snd_zap, global.heartname],


[scr_changedummyseq, 0, asq_mr_shocked, asq_mr_shockedext],
[css_makeobj, ph_5.x, ph_5.y, obj_makegears, depth],
[scr_deleteobj, obj_seqdummy, 1],
[cs_playsound, snd_enemydeath2],

[scr_wait, 120],

[scr_changedummyseq, 0, asq_mr_headclutch, cs_mr_evil],
[scr_changeratface, mr_face9],
[scr_textbox, ph_4.x-200,ph_4.y-400, @"?!", snd_madtalk, global.ratname],

[scr_changedummyseq, 0, asq_mr_headclutch],
[scr_textbox, ph_4.x-200,ph_4.y-400, @"I gotta get out of here!", snd_madtalk, global.ratname],


[scr_endcutscene, E6],
)


