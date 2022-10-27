ds_list_add(que,
[scr_playmusic, obj_recorder.music],

[scr_makedummy, 300,600, asq_mr_idle, asq_mr_idle, 1, 1.5],
[scr_makedummy, 550,600, csh_idle, csh_idle, 1, 1.5],
[scr_changevar, obj_seqdummy, 1, "float", true ],

[scr_textbox, 502,302, @"The way up is blocked..." , snd_zap, global.heartname],
[scr_textbox, 301, 251, @"We'll have to scale the 
building from the outside." , snd_madtalk, global.ratname],

[scr_changedummyseq, 1, csh_shrug, csh_shrug, -1], 
[scr_textbox, 502,302, @"Sheesh..." , snd_zap, global.heartname],
[scr_textbox, 502,302, @"I'm sure there's another way up." , snd_zap, global.heartname],
[scr_changeheartface, h_face7],
[scr_textbox, 502,302, @"Are all rats like this?" , snd_zap, global.heartname],

[scr_changedummyseq, 0, asq_mr_shrug, asq_mr_shrugext], 
[scr_textbox, 301, 251, @"Nah, just the mad ones." , snd_madtalk, global.ratname],

[scr_changedummyseq, 1, csh_idle], 
[scr_changeheartface, h_face11],
[scr_wait, 100],
[scr_changedummyseq, 0, asq_mr_idle], 
[cs_playsound, snd_beat, 3],
[scr_changeheartface, h_face1],
[scr_changedummyseq, 1, csh_snap1, csh_snap2],
[scr_textbox, 502,302, @"Ah-ha! ||||||||That's what
I'll call you!" , snd_zap, global.heartname],
[scr_changeheartface, h_face4],
[scr_textbox, 502,302, @"Mad Rat!" , snd_zap, global.heartname],
[scr_changedummyseq, 0, asq_mr_shrug, asq_mr_shrugext], 
[scr_changeheartface, h_face3],
[scr_textbox, 301, 251, @"Eh, Lab Rat is fine.", snd_madtalk, global.ratname],



[scr_endcutscene, L13],
)