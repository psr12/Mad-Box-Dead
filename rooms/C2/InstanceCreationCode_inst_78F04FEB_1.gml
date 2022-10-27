ds_list_add(que,

[scr_playmusic, intro_wretchednessoflife],
[scr_makedummy, 300,550, asq_mr_humph, asq_mr_humph, 1, 2],
[scr_makeflair, 700, 500, spr_gramophone, 4],
[scr_changevar, obj_flair, 0, "float" , true],
[scr_changevar, obj_flair, 0, "depth" , 50],
[scr_textbox, 400, 250, "Gotcha!", snd_madtalk, global.ratname],
[scr_changedummyseq, 0, asq_mr_dashdash, asq_mr_dashdash, 1, 2],
[scr_moveobj, obj_seqdummy, 0, 1050, 550, 6],
[scr_wait, 60],
[scr_changedummyseq, 0, asq_mr_trip1, asq_mr_trip2, 1, 2],
[scr_changevar, obj_flair, 0, "drawHologram" , true],
[scr_wait, 220],
[scr_changedummyseq, 0, asq_mr_tired, asq_mr_tired, -1, 2],
[scr_wait, 70],
//[scr_changevar, obj_flair, 0, "drawHologram" , false],
[scr_textbox, 1050, 250, "What's with this thing?", snd_madtalk, global.ratname],

[scr_changedummyseq, 0, cs_mr_fallback, cs_mr_fallbackext, -1, 2],
[scr_changeratface, mr_face7],
[scr_makedummy, 603,500,csh_shrug, csh_shrug, 1, 2],
[scr_changevar, obj_seqdummy, 1, "float" , true],
[scr_changeheartface, h_face3],
//[scr_moveobj, obj_flair, 0, 500, 500, 0.2],
[scr_playmusic, snd_blank],
[scr_deleteobj, obj_flair,0],
[scr_textbox, 603, 300, "Not a fan?", snd_zap, "???"],
[scr_changeheartface, h_face10],
[scr_changedummyseq, 1, csh_thinking, csh_thinking],
[scr_textbox, 603, 300, @"I thought rats liked this 
sort of music...", snd_zap, "???"],
[scr_textbox, 603, 300, @"Well, then...", snd_zap, "???"],
[scr_changedummyseq, 1, csh_shrug, csh_shrug, 1, 2],
[scr_changeheartface, h_face12],


[scr_playmusic, snd_radio],
[scr_textbox, 603, 300, @"I'll keep trying until
we find something you like!", snd_zap, "???"],

[scr_textbox, 1050, 250, "W-w-w-what the hell!?", snd_madtalk, global.ratname],
[scr_textbox, 1050, 250, "Stay away from me!", snd_madtalk, global.ratname],

[scr_changedummyseq, 0, asq_mr_dashdash, asq_mr_dashdash, 1, 2],
[scr_moveobj, obj_seqdummy, 0, 1950, 550, 6],

[scr_wait, 220],
[scr_textbox, 603, 300, @"How about|||.|||.|||.|||.", snd_zap, "???"],
[scr_changeheartface, h_face4],
[scr_playmusic, obj_recorder.music],
[scr_textbox, 603, 300, @"This-!", snd_zap, "???"],
[scr_changedummyseq, 1, csh_idle, csh_idle, 1, 2],
[scr_changeheartface, h_face1],
[scr_textbox, 603, 300, @"Huh?", snd_zap, "???"],
[scr_textbox, 603, 300, @"I didn't even say||| 'Go'||| yet...", snd_zap, "???"],


[scr_endcutscene, L2],
)