
ds_list_add(que,
[cs_fadeblack, 1, 0],
[scr_makedummy, ph_1.x-900,ph_1.y, asq_mr_dashdash, asq_mr_dashdash, 1, 1.5],
[cs_fadeblack, 0, 120],
[scr_moveobj, obj_seqdummy, 0, ph_1.x, ph_1.y, 5],

[scr_wait, 260],

[scr_changedummyseq, 0, asq_mr_tired],
[scr_wait, 60],

[scr_changedummyseq, 0, asq_mr_angry, asq_mr_angryext],

[scr_textbox, ph_1.x,ph_1.y-400, @"Rrrr! There's no end!", snd_madtalk, global.ratname],

[scr_spookytext, 200, 200, "...Where...", 120*2],

[scr_textbox, ph_1.x,ph_1.y-400, @"You! Show yourself! You--!", snd_madtalk, global.ratname],

[scr_spookytext, 300, 300, "...I need you...", 120],
[scr_spookytext, 400, 400, "...Nut Rat...", 120*2],

[scr_changedummyseq, 0, cs_mr_humph],
[scr_changeratface, mr_face11],
[scr_textbox, ph_1.x,ph_1.y-400, @"...Huh?", snd_madtalk, global.ratname],
[scr_changeratface, mr_face11],
[scr_textbox, ph_1.x,ph_1.y-400, @"...Arty?", snd_madtalk, global.ratname],
[scr_textbox, ph_1.x,ph_1.y-400, @"Is that you?", snd_madtalk, global.ratname],

[scr_spookytext, 200, 200, "...You have to...", 120],
[scr_spookytext, 300, 300, "...my frequency...", 120*2],

[scr_changeratface, mr_face13],
[scr_wait, 120*2],
[scr_changedummyseq, 0, asq_mr_paws],
[scr_textbox, ph_1.x,ph_1.y-400, @"Hmm...", snd_madtalk, global.ratname],


[scr_endcutscene, E7],
)


