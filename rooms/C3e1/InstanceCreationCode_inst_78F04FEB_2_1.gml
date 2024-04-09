ds_list_add(que,


[scr_makedummy, 300,550, asq_mr_crossed, asq_mr_crossed, 1, 2],
[scr_makedummy, 900,500, csh_idle, csh_idle, -1, 2],
[scr_changevar, obj_seqdummy, 1, "float" , true],
[scr_changeheartface, h_face11],
[scr_textbox, 402, 251, @"So,|||||| what's your story?", snd_madtalk, global.ratname], 

[scr_changeheartface, h_face1],
[scr_textbox,801, 301,@"My story?", snd_zap, global.heartname], 

[scr_textbox, 402, 251, @"Like, where did you come from?", snd_madtalk, global.ratname], 

[scr_changedummyseq, 1, csh_armscrossed, csh_armscrossed],
[scr_changeheartface, h_face10],
[scr_textbox,801, 301,@"Oh, the doctor put me together.", snd_zap, global.heartname], 
[scr_textbox,801, 301,@"We're working together to help people.", snd_zap, global.heartname], 
[scr_changedummyseq, 1, csh_idle, csh_idle],
[scr_changeheartface, h_face1],
[scr_textbox,801, 301,@"Before that, I was just some wires
and circuit boards,||||| I guess.", snd_zap, global.heartname], 

[scr_changedummyseq, 0, asq_mr_crossed, asq_mr_crossed],
[scr_textbox, 402, 251, @"Not a very good story, is it?", snd_madtalk, global.ratname], 


[scr_changedummyseq, 1, csh_hips, csh_hips],
[scr_changeheartface, h_face8],
[scr_textbox,801, 301,@"Well, how about you, then?", snd_zap, global.heartname],
[scr_changedummyseq, 0, asq_mr_shocked, asq_mr_shockedext],
[scr_shakecamera,50],
[scr_csplaysound, snd_pwhit],
[scr_moveobj, obj_seqdummy, 1, 500, 410, 50],
[scr_textbox,801, 301,@"Two rats fucked and you've
been in a cage ever since?", snd_zap, global.heartname], 
[scr_wait, 300],
[scr_moveobj, obj_seqdummy, 1, 900,500, 1],
[scr_changeheartface, h_face11],
[scr_textbox,801, 301,@"Sorry...||||||| I don't know where
that came from.", snd_zap, global.heartname],
[scr_changedummyseq, 1, csh_shrug, csh_shrug],
[scr_changeheartface, h_face3],
[scr_textbox,801, 301,@"I want to get along with you, 
I really do.", snd_zap, global.heartname],
[scr_changedummyseq, 0, asq_mr_crossed, asq_mr_crossed],
[scr_textbox, 402, 251, @"Uh...||||| It's fine...", snd_madtalk, global.ratname], 
[scr_textbox, 402, 251, @"My story isn't anything exciting,|| either.", snd_madtalk, global.ratname], 
[scr_textbox, 402, 251, @"It's nothing to be ashamed of.", snd_madtalk, global.ratname], 

[scr_textbox,801, 301, @".||.||.||.", snd_blank, global.heartname],
[scr_changeheartface, h_face4],
[scr_changedummyseq, 1, csh_crying, csh_shrug],
[scr_textbox,801, 301, @"Right,|||||| right...", snd_zap, global.heartname],
[scr_changedummyseq, 0, asq_mr_idle],
[scr_textbox,801, 301, @"Let's get back to work,||||| then!", snd_zap, global.heartname],



[scr_endcutscene, L3e1],
)