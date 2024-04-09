
ds_list_add(que,

[scr_playmusic, song_fortressoflies, 6],

[scr_changevar, obj_makesparks, 0, "on" , true],
[scr_changevar, obj_makesparks, 1, "on" , true],

[scr_makedummy, ph_1.x+900,ph_1.y, asq_mr_dashdash, asq_mr_dashdash, -1, 1.5],
[scr_moveobj, obj_seqdummy, 0, ph_1.x, ph_1.y, 4],
[scr_wait, 130],
[scr_makedummy, ph_2.x,ph_2.y-100, csh_idle,csh_idle, -1, 1.5],
[scr_changevar, obj_seqdummy, 1, "float" , true],

[scr_wait, 100],
[scr_changedummyseq, 0, asq_mr_idle],


[scr_textbox, ph_2.x,ph_2.y-400, @"There it is!", snd_zap, global.heartname],
[scr_changedummyseq, 0, asq_mr_backemote2, asq_mr_backemote2, 1],
[scr_changedummyseq, 1, csh_uploading],
[scr_wait, 160],

[scr_changedummyseq, 0, asq_mr_crossed, asq_mr_crossed, -1],

[scr_textbox, ph_1.x,ph_1.y-400, @"So what's that thing?", snd_madtalk, global.ratname],

[scr_textbox, ph_2.x,ph_2.y-400, @"A computer.", snd_zap, global.heartname],


[scr_textbox, ph_1.x,ph_1.y-400, @"Wh- No, I mean the...", snd_madtalk, global.ratname],
[scr_changedummyseq, 0, asq_mr_crossed, asq_mr_crossed, 1],
[scr_textbox, ph_1.x,ph_1.y-400, @"The big...
cheese-looking thing.", snd_madtalk, global.ratname],

[scr_changedummyseq, 1, csh_idle, csh_idle, 1],
[scr_changeheartface, h_face1],

[scr_textbox, ph_2.x,ph_2.y-400, @"Hmm?", snd_zap, global.heartname],
[scr_wait, 100],
[scr_changedummyseq, 1, csh_uploading, csh_uploading, -1],

[scr_textbox, ph_2.x,ph_2.y-400, @"It's someone else's experiment.
Nothing to do with me.", snd_zap, global.heartname],

[scr_wait, 100],
[scr_changedummyseq, 0, cs_mr_evil, cs_mr_evil, -1],
[scr_changeratface, mr_face9],
[scr_textbox, ph_1.x,ph_1.y-400, @"...That's it?", snd_madtalk, global.ratname],

[scr_wait, 300],
[scr_changedummyseq, 1, ch_backwards, ch_backwards, -1],
[scr_wait, 200],
[scr_changedummyseq, 1, csh_shrug, csh_shrug, 1],
[scr_changeheartface, h_face9],


[scr_textbox, ph_2.x,ph_2.y-400, @"I don't know...
I guess it's like a big potato clock?", snd_zap, global.heartname],

[scr_changedummyseq, 1, csh_waggle],
[scr_textbox, ph_2.x,ph_2.y-400, @"Now stop interrupting.
The girl, remember?", snd_zap, global.heartname],
[scr_changedummyseq, 1, csh_uploading, csh_uploading, -1],

[scr_wait, 120],
[scr_changedummyseq, 0, asq_mr_crossed],
[scr_textbox, ph_1.x,ph_1.y-400, @"...", snd_madtalk, global.ratname],

[scr_wait, 300],
[scr_changedummyseq, 1, csh_idle],
[scr_changeheartface, h_face11],
[scr_wait, 60],
[scr_changeheartface, h_face1],

[scr_playmusic, snd_humminglights, 1],
[cs_playsound, snd_lightsoff],
[css_makeobj, ph_5.x, ph_5.y, obj_darkness, -9999],
[scr_changevar, obj_darkness, 0, "org_size", 1.2],
[scr_changedummyseq, 0, asq_mr_shocked, asq_mr_shockedext],

[scr_wait, 120 * 4],
[scr_changedummyseq, 0, asq_mr_tired],
[scr_wait, 120 * 2],

[scr_changedummyseq, 1, csh_idle, csh_idle, 1],
[scr_textbox, ph_2.x,ph_2.y-400, @"All the equipment is 
restarting.", snd_zap, global.heartname],

[scr_changedummyseq, 0, asq_mr_angry, asq_mr_angryext],
[scr_textbox, ph_1.x,ph_1.y-400, @"Great, whatever.
Let's get out of here.", snd_madtalk, global.ratname],

[scr_changedummyseq, 0, asq_mr_crossed, asq_mr_crossed, 1],

[css_makeobj, 0, 0, obj_glitchy, depth],
[scr_changevar, obj_seqdummy,1, "shake", true],
[cs_playsound, snd_static,0.7],
[css_makeobj, 500,500, obj_controlpixelation, depth],
[scr_shakecamera, 50],
[scr_wait, 120],
[scr_changedummyseq, 1, ch_shocked],
[scr_playmusic, snd_blank],
[scr_textbox, ph_2.x,ph_2.y-400, @"...! ", snd_zap, global.heartname],
[scr_changedummyseq, 1, csh_idle],
[scr_changeheartface, h_face1],
[scr_textbox, ph_2.x,ph_2.y-400, @"Uh, hey... 
Can we rest first?
I'm feeling kind of...", snd_zap, global.heartname],
[scr_changeheartface, h_face14],
[scr_textbox, ph_2.x,ph_2.y-400, @"Weird...", snd_zap, global.heartname],

[scr_textbox, ph_1.x,ph_1.y-400, @"What, are ya scared?", snd_madtalk, global.ratname],
[scr_textbox, ph_1.x,ph_1.y-400, @"If you're gonna be my heart, 
you're gonna have to grow a spine.", snd_madtalk, global.ratname],

[scr_changevar, obj_seqdummy,1, "shake", false],
[scr_changedummyseq, 1, csh_idle],
[scr_changeheartface, h_face1],
[scr_wait, 120 * 2],
[scr_playmusic, song_sistersballad, 10],
[scr_changedummyseq, 1, csh_crying, csh_idle],
[scr_changeheartface, h_face3],
[scr_textbox, ph_2.x,ph_2.y-400, @"Uu-", snd_zap, global.heartname],
[scr_wait, 120 * 1],
[scr_changevar, obj_seqdummy,1, "shake", true],
[scr_changedummyseq, 1, csh_hardcrying],
[scr_textbox, ph_2.x,ph_2.y-400, @"Uuuuuuaa-", snd_zap, global.heartname],

[scr_changedummyseq, 0, cs_mr_humph, cs_mr_humph, -1],
[scr_changeratface, mr_face2],
[scr_textbox, ph_1.x,ph_1.y-400, @"...Sorry.", snd_madtalk, global.ratname],
[scr_textbox, ph_1.x,ph_1.y-400, @"We can rest, if it's that bad.", snd_madtalk, global.ratname],


[scr_changevar, obj_seqdummy,1, "shake", false],
[scr_changedummyseq, 1, csh_shrug],
[scr_changeheartface, h_face3],
[scr_deleteobj, obj_glitchy, 0],
[scr_textbox, ph_2.x,ph_2.y-400, @"No, it's...", snd_zap, global.heartname],
[scr_textbox, ph_2.x,ph_2.y-400, @"after everything I did...", snd_zap, global.heartname],
[scr_textbox, ph_2.x,ph_2.y-400, @"and you call me your heart...", snd_zap, global.heartname],

[css_makeobj, 0, 0, obj_glitchy, depth],

[scr_changedummyseq, 1, csh_idle],
[scr_changeheartface, h_face15],
[scr_textbox, ph_2.x,ph_2.y-400, @"It's-", snd_zap, global.heartname],
[scr_changevar, obj_seqdummy,1, "shake", true],

[scr_changevar, obj_cutscenehandler, 0, "music_wobble", true],
[scr_textbox, ph_2.x,ph_2.y-400, @"Whu buu huuu uuuuh 
buuu uuu huuu-", snd_zap, global.heartname],
[scr_changeratface, mr_face13],
[scr_textbox, ph_1.x,ph_1.y-400, @"I changed my mind.", snd_madtalk, global.ratname],
[scr_textbox, ph_1.x,ph_1.y-400, @"We should take a break. ||||
Immediately.", snd_madtalk, global.ratname],

[scr_changevar, obj_cutscenehandler,0,  "music_wobble", false],
[scr_changedummyseq, 1, csh_crying, csh_shrug],
[scr_changeheartface, h_face3],
[scr_deleteobj, obj_glitchy, 0],
[scr_changevar, obj_seqdummy,1, "shake", false],
[scr_textbox, ph_2.x,ph_2.y-400, @"No, no. You're right.
We should get back ASAP.", snd_zap, global.heartname],

[scr_textbox, ph_2.x,ph_2.y-400, @"I'll try and hold it
together...", snd_zap, global.heartname],



//[scr_wait, 120 * 2],
//[css_makeobj, 0, 0, obj_glitchy, depth],
//[scr_changedummyseq, 1, csh_droopy],
//[scr_changeheartface, h_face3],
//[scr_textbox, ph_2.x,ph_2.y-400, @"But still...", snd_zap, global.heartname],
//[scr_textbox, ph_2.x,ph_2.y-400, @"I don't think I can get
//'sick'...", snd_zap, global.heartname],



[scr_endcutscene, E4],
)


