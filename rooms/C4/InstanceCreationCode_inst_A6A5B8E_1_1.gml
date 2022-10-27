ds_list_add(que,

[scr_makedummy, 400,650, asq_mr_idle, asq_mr_idle, 1, 1],

[scr_makedummy, 900,650, csh_idle, csh_idle, -1, 1],
[scr_changevar, obj_seqdummy, 1, "float", true ],
[scr_textbox, 900, 400, @"It's funny how you keep 
ending up in cages, isn't it?", snd_zap, global.heartname],
[scr_changedummyseq, 0, asq_mr_humph, asq_mr_humph], 
[scr_textbox, 500, 400, "'Funny'||| isn't the word I'd use.", snd_madtalk, global.ratname],
[css_makeobj, 0,0, obj_eyeflair],
[scr_wait, 10],
[css_makeobj, 0,0, obj_eyeflair],
[scr_wait, 10],
[css_makeobj, 0,0, obj_eyeflair],
[scr_wait, 10],
[css_makeobj, 0,0, obj_eyeflair],
[scr_wait, 10],
[css_makeobj, 0,0, obj_eyeflair],
[scr_wait, 10],
[css_makeobj, 0,0, obj_eyeflair],
[scr_changedummyseq, 0, asq_mr_shocked, asq_mr_shockedext], 
[scr_wait, 10],
[css_makeobj, 0,0, obj_eyeflair],
[scr_wait, 10],
[css_makeobj, 0,0, obj_eyeflair],
[scr_wait, 10],
[css_makeobj, 0,0, obj_eyeflair],
[scr_wait, 10],
[css_makeobj, 0,0, obj_eyeflair],
[scr_wait, 10],
[css_makeobj, 0,0, obj_eyeflair],
[scr_wait, 10],

[scr_wait, 100],
[scr_textbox, 500, 400, "What's going on?", snd_madtalk, global.ratname],

[scr_changedummyseq, 1, csh_magnifying,csh_magnifying], 
[scr_textbox, 990, 300, @"It's the help.", snd_zap, global.heartname] ,
[scr_textbox, 990, 300, @"Looks like they 
want to clean out this cage.", snd_zap, global.heartname] ,
[scr_textbox, 990, 300, @"Just stay out of their way, alright?", snd_zap, global.heartname],
[scr_textbox, 500, 400, "That might be hard!", snd_madtalk, global.ratname],


[scr_endcutscene, L4],
)