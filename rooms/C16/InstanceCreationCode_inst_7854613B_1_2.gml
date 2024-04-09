
ds_list_add(que,
[scr_makedummy, -400,600, asq_mr_dashdash, asq_mr_dashdash, 1, 2],
[scr_moveobj, obj_seqdummy, 0, 500, 600, 5],
[scr_wait, 200],
[scr_changedummyseq, 0, asq_mr_tired],
[scr_makedummy, 900,400,csh_flex,csh_flex2, -1, 3],
[scr_changeheartface, h_face5],
[scr_changevar, obj_seqdummy, 1, "float" , true],
[scr_changedummyseq, 0, asq_mr_shocked, asq_mr_shockedext],
[scr_textbox, 900, 200, "Bleugh!", snd_zap, global.heartname],
[scr_changeheartface, h_face8],
[scr_textbox, 900, 200, @"Do you know how gross this is
for me?", snd_zap, global.heartname],
[scr_changedummyseq, 1, csh_shrug],
[scr_changeheartface, h_face9],
[scr_textbox, 900, 200, @"You can't escape by running around, FYI.", 
snd_zap, global.heartname],

[scr_changedummyseq, 0, asq_mr_angry, asq_mr_angryext],
[scr_textbox, 500, 300, "Then let me out!", snd_madtalk, global.ratname],

[scr_changeheartface, h_face11],
[scr_textbox, 900, 200, @"No can do.", snd_zap, global.heartname],
[scr_textbox, 900, 200, @"Your body's gotta stay put
until the Doctor finds it.", snd_zap, global.heartname],
[scr_changeheartface, h_face1],
[scr_textbox, 900, 200, @"If you need something to do, 
I've got solitaire.", snd_zap, global.heartname],

[scr_changedummyseq, 0, asq_mr_headclutch ],
[scr_textbox, 500, 300, @"Fine! Just let me go and I 
won't hurt the Doctor!", snd_madtalk, global.ratname],
[scr_textbox, 500, 300, @"I'll leave and never come back!", snd_madtalk, global.ratname],

[scr_changedummyseq, 1, csh_hips],
[scr_changeheartface, h_face8],
[scr_textbox, 900, 200, @"That's not gonna cut it!", snd_zap, global.heartname],
[scr_textbox, 900, 200, @"The Doctor needs me and my data! 
And he needs you, too! So I wish you
would just cooperate!", snd_zap, global.heartname],

[scr_changedummyseq, 0, asq_mr_angry, asq_mr_angryext],
[scr_textbox, 500, 300, @"Look at me!", snd_madtalk, global.ratname],
[scr_textbox, 500, 300, @"I was locked up my whole life!
There's nowhere left to cut open!", snd_madtalk, global.ratname],
[scr_textbox, 500, 300, @"You seriously think I would help
the humans?!", snd_madtalk, global.ratname],

[scr_changedummyseq, 1, csh_flex,csh_flex2 ],
[scr_changevar, obj_seqdummy, 1, "shake" , true],
[scr_textbox, 900, 200, @"Fine! Spend the rest of your 
miserable life here!", snd_zap, global.heartname],
[cs_playsound, snd_zap],
[scr_deleteobj, obj_seqdummy, 1],

[scr_wait, 200],
[scr_changedummyseq, 0, asq_mr_crossed],
[scr_textbox, 500, 300, @"...", snd_blank, global.ratname],
[scr_wait, 200],
[scr_changedummyseq, 0, asq_mr_dashdash],
[scr_moveobj, obj_seqdummy, 0, 2500, 600, 5],
[scr_wait, 200],


[scr_endcutscene, L16],
)



/*
huff, i'm out of ram
so quit running around
you can't get out like that anyway



