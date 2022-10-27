ds_list_add(que,

[scr_makedummy, -400,600, asq_mr_dashdash, asq_mr_dashdash, 1, 2],
[scr_moveobj, obj_seqdummy, 0, 500, 600, 5],
[scr_wait, 200],
[scr_changedummyseq, 0, asq_mr_cheer],
[scr_textbox, 500, 300, "Ahhhh-!||||||| The air is so fresh!", snd_madtalk, global.ratname],


[scr_makedummy, 900,550, csh_idle, csh_idle, -1, 2],
[scr_changevar, obj_seqdummy, 1, "float" , true],
[scr_textbox, 900, 350, @"You really enjoy that, huh?", snd_zap, global.heartname],

[scr_changedummyseq, 0, asq_mr_idle, asq_mr_idle],
[scr_textbox, 500, 300, @"Of course! After being cooped up
for so long, anyone would!", snd_madtalk, global.ratname],

[scr_textbox, 900, 350, @"Mmmm hmmmm.", snd_zap, global.heartname],
[scr_wait, 300],
[scr_textbox, 500, 300, @"I guess you don't breathe 
or anything, right?", snd_madtalk, global.ratname],
[scr_changedummyseq, 1, csh_shrug],
[scr_textbox, 900, 350, @"Just sight and sound.", snd_zap, global.heartname],

[scr_textbox, 500, 300, @"So you can't eat? ", snd_madtalk, global.ratname],
[scr_changedummyseq, 1, csh_hips],
[scr_changeheartface, h_face8],
[scr_textbox, 900, 350, @"No! ||||Of course not!", snd_zap, global.heartname],
[scr_changedummyseq, 0, asq_mr_crossed],
[scr_textbox, 500, 300, @"And you can't smell?", snd_madtalk, global.ratname],
[scr_changedummyseq,1, csh_idle],
[scr_changeheartface, h_face5],
[scr_textbox, 900, 350, @"No!", snd_zap, global.heartname],
[scr_changeheartface, h_face1],
[scr_changedummyseq, 0, cs_mr_humph],
[scr_changeratface, mr_face4],
[scr_textbox, 500, 300, @"Well, that's a relief.", snd_madtalk, global.ratname],
[scr_wait, 200],
[scr_changeheartface, h_face2],
[scr_textbox, 900, 350, @"Let's change subjects...", snd_zap, global.heartname],
[scr_changeheartface, h_face1],
[scr_changedummyseq, 0, asq_mr_idle],
[scr_textbox, 900, 350, @"How do you like the outside world?
Is is how you expected?", snd_zap, global.heartname],

[scr_changedummyseq, 0, asq_mr_crossed],
[scr_textbox, 500, 300, @"I figured there'd be
humans everywhere.", snd_madtalk, global.ratname],
[scr_changedummyseq, 0, asq_mr_paws],
[scr_textbox, 500, 300, @"But it's so quiet. 
It's kinda eerie...", snd_madtalk, global.ratname],

[scr_changedummyseq, 0, asq_mr_idle],
[scr_changeheartface, h_face1],
[scr_changedummyseq, 1, csh_yousee],
[scr_textbox, 900, 350, @"I guess that's just how it is.
Things aren't always what you expect.", snd_zap, global.heartname],

[scr_changedummyseq, 0, asq_mr_shrug, asq_mr_shrugext],
[scr_textbox, 500, 300, @"Apparently.", snd_madtalk, global.ratname],

[scr_changeheartface, h_face4],
[scr_textbox, 900, 350, @"Isn't it about time we
head back?", snd_zap, global.heartname],

[scr_changedummyseq, 0, asq_mr_crossed],
[scr_textbox, 500, 300, @"Yeah, I'm done playing around.", snd_madtalk, global.ratname],
[scr_textbox, 500, 300, @"Let's go back.", snd_madtalk, global.ratname],



[scr_endcutscene, L6e1],
)