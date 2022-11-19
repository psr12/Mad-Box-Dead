
ds_list_add(que,
[cs_fadeblack, 1, 0],
[scr_makedummy, ph_1.x-900,ph_1.y, asq_mr_dashdash, asq_mr_dashdash, 1, 1.5],
[cs_fadeblack, 0, 120],
[scr_moveobj, obj_seqdummy, 0, ph_1.x, ph_1.y, 5],

[scr_wait, 200],

[scr_changedummyseq, 0, asq_mr_tired],
[scr_wait, 60],

[scr_changedummyseq, 0, asq_mr_angry, asq_mr_angryext],

[scr_textbox, ph_1.x,ph_1.y-300, @"Grrr! 
There's no end to it!", snd_madtalk, global.ratname],

[scr_spookytext, 100, 100, "...Greetings, mammal...", 120],

[scr_changedummyseq, 0, asq_mr_headclutch, cs_mr_evil],
[scr_changeratface, mr_face9],
[scr_textbox, ph_1.x-200,ph_1.y-300, @"It's you! The... virus!", snd_madtalk, global.ratname],

[scr_spookytext, 100, 100, "...Now that you're alone...", 120],
[scr_spookytext, 200, 200, "...I will explain myself...", 120],
[scr_changedummyseq, 0, asq_mr_crossed],
[scr_spookytext, 100, 300, "...The humans are unpredictable...", 120],

[scr_spookytext, 100, 100, "...As long as they live...", 120],
[scr_spookytext, 200, 200, "...We can never truely be safe...", 120],
[scr_spookytext, 300, 300, "...They must be eliminated...", 120],

[scr_changedummyseq, 0, asq_mr_headclutch, cs_mr_evil],
[scr_changeratface, mr_face9],
[scr_textbox, ph_1.x-200,ph_1.y-300, @"Why are you telling me?!
I hate the humans!", snd_madtalk, global.ratname],

[scr_spookytext, 100, 100, "...Then why did you save the girl?...", 120],

[scr_changedummyseq, 0, asq_mr_headclutch, cs_mr_evil],
[scr_changeratface, mr_face9],
[scr_textbox, ph_1.x-200,ph_1.y-300, @"I-!", snd_madtalk, global.ratname],
[scr_wait, 120],
[scr_changedummyseq, 0, asq_mr_paws],
[scr_textbox, ph_1.x-200,ph_1.y-300, @"I don't know. My actions
don't match my feelings...", snd_madtalk, global.ratname],

[scr_spookytext, 100, 100, "...Then you, too, are unpredictable...", 120],
[scr_spookytext, 200, 200, "...Stay here, as I decide your fate...", 120],

[scr_changedummyseq, 0, cs_mr_evil],
[scr_changeratface, mr_face9],
[scr_textbox, ph_1.x-200,ph_1.y-300, @"Hah! As if!", snd_madtalk, global.ratname],
[scr_wait, 160],
[scr_changedummyseq, 0, asq_mr_crossed],
[scr_textbox, ph_1.x-200,ph_1.y-300, @"...", snd_madtalk, global.ratname],
[scr_wait, 120],


[scr_spookytext, 200, 200, "...Where are you...", 120*2],

[scr_changedummyseq, 0, asq_mr_headclutch, cs_mr_evil, -1],
[scr_changeratface, mr_face9],

[scr_textbox, ph_1.x,ph_1.y-300, @"Show yourself! You--!", snd_madtalk, global.ratname],

[scr_spookytext, 200, 200, "...I need you...", 120*2],
[scr_spookytext, 300, 300, "...Nut Rat...", 120],

[scr_changedummyseq, 0, cs_mr_humph, cs_mr_humph, 1],
[scr_changeratface, mr_face11],
[scr_textbox, ph_1.x,ph_1.y-300, @"...Huh?", snd_madtalk, global.ratname],
[scr_textbox, ph_1.x,ph_1.y-300, @"...Arty?", snd_madtalk, global.ratname],
[scr_changedummyseq, 0, asq_mr_headclutch, cs_mr_evil],
[scr_changeratface, mr_face9],
[scr_textbox, ph_1.x,ph_1.y-300, @"Is that you?", snd_madtalk, global.ratname],

[scr_spookytext, 200, 200, "...You have to...", 120],
[scr_spookytext, 300, 300, "...keep going...", 120*2],	

[scr_changeratface, mr_face13],
[scr_wait, 120*2],
[scr_changedummyseq, 0, asq_mr_crossed],
[scr_textbox, ph_1.x,ph_1.y-300, @"Hmm...", snd_madtalk, global.ratname],

[scr_changedummyseq, 0, asq_mr_dashdash],
[scr_moveobj, obj_seqdummy, 0, ph_1.x+9999, ph_1.y, 5],
[scr_wait, 120*3],


[scr_endcutscene, E7],
)


