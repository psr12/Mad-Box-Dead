
ds_list_add(que,
[scr_makedummy, ph_1.x,ph_1.y, asq_mr_crossed, asq_mr_crossed, -1, 2],
[scr_wait, 200],

[scr_textbox, ph_1.x,ph_1.y-400, "...Cryopod?", snd_madtalk, global.ratname],

[scr_makedummy, ph_2.x,ph_2.y, csh_flex,csh_flex2, -1, 2],
[scr_changevar, obj_seqdummy, 1, "float" , true],
[scr_changeheartface, h_face8],
[scr_changedummyseq, 0, cs_mr_fallback, cs_mr_fallbackext, 1],

[scr_textbox, ph_2.x,ph_2.y-400, @"What?! Let me see that!", snd_zap, global.heartname],
[scr_changedummyseq, 1, csh_idle],
[scr_changeheartface, h_face12],
[scr_wait, 60],
[scr_changedummyseq, 0, asq_mr_tired],
[scr_wait, 60],
[scr_changedummyseq, 0, asq_mr_headclutch, cs_mr_evil],
[scr_changeratface, mr_face9],
[scr_textbox, ph_1.x,ph_1.y-400, @"Aren't you supposed to
be dead?!", snd_madtalk, global.ratname],

[scr_changeheartface, h_face1],
[scr_wait, 30],
[scr_changeheartface, h_face11],
[scr_wait, 30],
[scr_changedummyseq, 1, csh_shrug],
[scr_changeheartface, h_face14],
[scr_textbox, ph_2.x,ph_2.y-400, @"Ah, well, you see...
I gave it some thought.", snd_zap, global.heartname],


[scr_changedummyseq, 0, asq_mr_crossed],
[scr_changedummyseq, 1, csh_idle],
[scr_changeheartface, h_face3],
[scr_textbox, ph_2.x,ph_2.y-400, @"If the doctor's... ||||||not around anymore, 
It might be better if I disappeared.", snd_zap, global.heartname],

[scr_changedummyseq, 1, ch_spin, csh_thumbsup],
[scr_changeheartface, h_face4],
[scr_textbox, ph_2.x,ph_2.y-400, @"...But this changes things!", snd_zap, global.heartname],

[scr_changedummyseq, 1, csh_waggle],
[scr_changeheartface, h_face1],
[scr_textbox, ph_2.x,ph_2.y-400, @"I bet they hopped in a 
cryopod to stay safe!", snd_zap, global.heartname],

[scr_changedummyseq, 0, asq_mr_angry, asq_mr_angryext],
[scr_changedummyseq, 1, csh_shrug],
[scr_changeheartface, h_face2],
[scr_textbox, ph_2.x,ph_2.y-400, @"C'mon! I'll race ya there!", snd_zap, global.heartname],

[cs_playsound, snd_zap],
[scr_deleteobj, obj_seqdummy, 1],

[scr_changedummyseq, 0, asq_mr_headclutch, cs_mr_evil],
[scr_changeratface, mr_face9],
[scr_textbox, ph_1.x,ph_1.y-400, @"They're BOTH still alive?!
This must be a joke!", snd_madtalk, global.ratname],


[scr_endcutscene, E2],
)


