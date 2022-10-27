ds_list_add(que,
[scr_playmusic, obj_recorder.music],

[scr_makedummy, -400,600, asq_mr_dashdash, asq_mr_dashdash, 1, 2],
[scr_moveobj, obj_seqdummy, 0, 500, 600, 5],
[scr_wait, 200],
[scr_changedummyseq, 0, asq_mr_idle, asq_mr_idle],
[scr_textbox, 500, 300, @"Was the city always like this? ", snd_madtalk, global.ratname],

[scr_makedummy, 900,550, csh_armscrossed, csh_armscrossed, -1, 2],
[scr_changeheartface, h_face10],
[scr_changevar, obj_seqdummy, 1, "float" , true],
[scr_textbox, 900, 350, @"Beats me.", snd_zap, global.heartname],
[scr_textbox, 900, 350, @"This is my first time, too.", snd_zap, global.heartname],

[scr_makeflair,750, -200, spr_beeline1, 3],
[scr_changevar, obj_flair, 0, "float" , true],
[scr_moveobj,obj_flair, 0, 750, 200, 3],
[scr_wait, 200],
[scr_changedummyseq, 0, asq_mr_shocked, asq_mr_shockedext],
[scr_changedummyseq, 1, ch_shocked, ch_shocked],
[scr_wait, 200],

[scr_textbox, 500, 300, @"A monster!?", snd_madtalk, global.ratname],
[scr_textbox, 1000, 200, @"#||||#||||#||||#||||#", snd_archive, "???"],
[scr_wait, 50],
[scr_moveobj,obj_flair, 0, -300, 200, 4],
[scr_wait, 200],
[scr_changedummyseq, 0, asq_mr_crossed, asq_mr_crossed],
[scr_textbox, 500, 300, @"...|||Maybe it didn't see us?", snd_madtalk, global.ratname],
[scr_changedummyseq, 1, csh_idle,csh_idle],
[scr_changeheartface, h_face3],
[scr_textbox, 900, 350, @"We should leave...", snd_zap, global.heartname],


[scr_endcutscene, L7],
)