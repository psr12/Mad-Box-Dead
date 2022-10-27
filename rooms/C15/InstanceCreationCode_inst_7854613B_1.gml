
ds_list_add(que,
[scr_makedummy, 300,650, asq_mr_tired, asq_mr_tired, 1, 2],
[scr_makedummy, 1000,650, csh_idle, csh_idle, -1, 1.5],
[scr_changevar, obj_seqdummy, 1, "float", true ],
[scr_textbox, 1000, 300, @"...He did it.", snd_zap, global.heartname],
[scr_changeheartface, h_face5],
[scr_changedummyseq, 1, csh_screaming],
[scr_textbox, 1000, 300, @"A rat like him really 
defeated a bird!", snd_zap, global.heartname],

[scr_changedummyseq, 0, asq_mr_angry, asq_mr_angryext],
[scr_textbox, 300, 300, @"Yeah, and the Doctor's next!", snd_madtalk, global.ratname],

[scr_changedummyseq, 0, asq_mr_trip1, cs_mr_tripped],
[scr_changeratface, mr_face12],
[scr_makeflair, 300,650, obj_flair, 2.2],
[scr_changevar, obj_flair, 0, "sprite_index", spr_talon],
[cs_playsound, snd_hot2],

[scr_wait, 180],
[scr_changedummyseq, 1, csh_yousee],
[scr_changeheartface, h_face4],
[scr_textbox, 1000, 300, @"Or maybe not!
He he heh ha ha!", snd_zap, global.heartname],
[scr_textbox, 1000, 300, @"You had me worried for a 
second there!", snd_zap, global.heartname],

[scr_changeratface, mr_face9],
[scr_textbox, 300, 300, @"Geh!", snd_madtalk, global.ratname],
[scr_textbox, 300, 300, @"Bastard!", snd_madtalk, global.ratname],

[scr_changedummyseq, 1, csh_shrug],
[scr_changeheartface, h_face1],
[scr_textbox, 1000, 300, @"Don't worry, " + string(global.ratname) + ".", snd_zap, global.heartname],
[scr_textbox, 1000, 300, @"They'll find the body eventually.", snd_zap, global.heartname],

[scr_changeratface, mr_face7],
[scr_textbox, 300, 300, @"No-!", snd_madtalk, global.ratname],

[cs_fadeblack, 1, 100],
[scr_playmusic, snd_wingflap],
[scr_wait, 400],
[scr_changeratface, mr_face12],
[scr_moveobj, obj_cameraman, 0, ph_1.x, ph_1.y-100, 9999],
[scr_moveobj, obj_seqdummy, 0, ph_1.x, ph_1.y, 9999],
[scr_changedummyseq, 0, asq_mr_trip2, asq_mr_trip2, 1, 1],
[cs_change_global, "zoom", 0.3],
[scr_playmusic, snd_blank],
[scr_wait, 100],
[cs_fadeblack, 0, 100],

[scr_changedummyseq, 0, asq_mr_tired, asq_mr_tired, -1, 1],
[scr_wait, 100],
[cs_change_global, "zoom", 0.5],
[scr_textbox, ph_1.x, ph_1.y-200, @"Huh?", snd_madtalk, global.ratname],
[scr_moveobj, obj_cameraman, 0, ph_1.x, ph_1.y-100, 9999],
[cs_change_global, "zoom", 1],
[scr_changedummyseq, 0, asq_mr_shocked, asq_mr_shockedext, 1],
[scr_textbox, ph_1.x, ph_1.y-200, @"Huah!?", snd_madtalk, global.ratname],
[scr_textbox, ph_1.x, ph_1.y-200, @"These chicks!", snd_madtalk, global.ratname],
[scr_textbox, ph_1.x, ph_1.y-200, @"They're dead!", snd_madtalk, global.ratname],

[scr_moveobj, obj_seqdummy, 1, ph_2.x, ph_2.y, 999],

[scr_changedummyseq, 1, ch_shocked, ch_shocked, -1, 1],
[scr_changeheartface, h_face5],
[scr_textbox,  ph_2.x, ph_2.y-200, @"What!?", snd_zap, global.heartname],
[scr_changedummyseq, 1, csh_hips],
[scr_changeheartface, h_face8],
[scr_textbox,  ph_2.x, ph_2.y-200, @"Beretta's trying to feed her chicks,
even though they're dead?", snd_zap, global.heartname],
[scr_changeheartface, h_face1],
[scr_textbox,  ph_2.x, ph_2.y-200, @"I guess that's the power of
instincts, for you...", snd_zap, global.heartname],
[scr_changedummyseq, 1, csh_shrug],
[scr_textbox,  ph_2.x, ph_2.y-200, @"I'll have to burn all my battery
on my secret weapon.", snd_zap, global.heartname],

[scr_changedummyseq, 1, csh_defib2, csh_defib2],
[scr_changeheartface, h_face6],
[scr_wait, 200],

[scr_changedummyseq, 1, csh_defib3],
[scr_wait, 50],
[scr_textbox,  ph_2.x, ph_2.y-200, @"Clear.", snd_zap, global.heartname],
[scr_changedummyseq, 1, csh_defib4],


[cs_playsound, snd_taser],
[scr_changevar, obj_makesparks, 0, "on", true],
[scr_changedummyseq, 0, asq_mr_shocked],
[scr_wait, 160],

[scr_changedummyseq, 1, csh_defib3],
[scr_changevar, obj_makesparks, 0, "on", false],
[scr_changedummyseq, 0, asq_mr_trip1, cs_mr_tripped],
[scr_changeratface, mr_face12],
[scr_wait, 120],
[scr_textbox,  ph_2.x, ph_2.y-200, @"Sleep tight, " + global.ratname + "." , snd_zap, global.heartname],
[cs_fadeblack, 1, 300],
[scr_wait, 600],


[scr_endcutscene, L15],
)