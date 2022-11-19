
ds_list_add(que,
[scr_makedummy, ph_1.x-900,ph_1.y, asq_mr_dashdash, asq_mr_dashdash, 1, 1.5],
[scr_moveobj, obj_seqdummy, 0, ph_1.x, ph_1.y, 4],

[scr_wait, 100],
[scr_makedummy, ph_2.x,ph_2.y-20, csh_idle, csh_idle, 1, 1.5],
[scr_changevar, obj_seqdummy, 1, "float" , true],

//[scr_makedummy, ph_3.x,ph_3.y, seq_rg_idle, seq_rg_idle, 1, 1],
//[scr_changevar, obj_seqdummy, 2, "layer", layer_get_id("RATGOD") ],
//[scr_changevar, obj_seqdummy, 2, "blue", true],
//[scr_changevar, obj_seqdummy, 2, "float", true],


[scr_wait, 260],
[scr_changedummyseq, 0, asq_mr_idle],

[scr_textbox, ph_2.x,ph_2.y-400, @"Seems they're alright.", snd_zap, global.heartname],

[scr_changedummyseq, 0, asq_mr_shrug, asq_mr_shrugext],
[scr_textbox, ph_1.x,ph_1.y-400, @"So what was that about?", snd_madtalk, global.ratname],
[scr_changedummyseq, 1, csh_thinking],
[scr_changeheartface, h_face10],
[scr_textbox, ph_2.x,ph_2.y-400, @"I'm... not sure.", snd_zap, global.heartname],
[scr_textbox, ph_2.x,ph_2.y-400, @"It happened as soon as we showed up.
It can't be a coincidence.", snd_zap, global.heartname],

[scr_changedummyseq, 0, cs_mr_humph],
[scr_changeratface, mr_face5],
[scr_textbox, ph_1.x,ph_1.y-400, @"...", snd_madtalk, global.ratname],
[scr_textbox, ph_2.x,ph_2.y-400, @"...", snd_zap, global.heartname],

[scr_changedummyseq, 1, csh_thinking, csh_thinking, -1],
[scr_changeheartface, h_face9],
[scr_textbox, ph_2.x,ph_2.y-400, @"You're gonna have to take
care of her, you know...", snd_zap, global.heartname],

[scr_changeratface, mr_face13],
[scr_textbox, ph_1.x,ph_1.y-400, @"Huh?", snd_madtalk, global.ratname],
[scr_changedummyseq, 1, csh_shrug],
[scr_textbox, ph_2.x,ph_2.y-400, @"The kid.", snd_zap, global.heartname],
[scr_changeratface, mr_face5],
[scr_textbox, ph_1.x,ph_1.y-400, @"Oh, yeah...", snd_madtalk, global.ratname],
[scr_wait, 400],
[scr_changedummyseq, 0, asq_mr_shocked, asq_mr_shockedext],
[scr_textbox, ph_1.x,ph_1.y-400, @"Wait, what?!", snd_madtalk, global.ratname],
[scr_changedummyseq, 0, asq_mr_stomp2],
[scr_textbox, ph_1.x,ph_1.y-400, @"Why the hell should I?!", snd_madtalk, global.ratname],

[scr_spookytext, 100, 100, "...Shut up...", 50],

[scr_changedummyseq, 1, csh_flex2],
[scr_textbox, ph_2.x,ph_2.y-400, @"You DID save them, afterall.", snd_zap, global.heartname],
[scr_textbox, ph_2.x,ph_2.y-400, @"It should be YOUR responsibility.", snd_zap, global.heartname],

[scr_changedummyseq, 0, asq_mr_headclutch],
[scr_textbox, ph_1.x,ph_1.y-400, @"You did too!
YOU do it!", snd_madtalk, global.ratname],

[scr_spookytext, 200, 200, "...Shut up...", 50],

[scr_changedummyseq, 1, csh_thinking],
[scr_changeheartface, h_face10],
[scr_textbox, ph_2.x,ph_2.y-400, @"I guess I could tell them 
what to do?", snd_zap, global.heartname],
[scr_textbox, ph_2.x,ph_2.y-400, @"You'd still have to stay here,
since I'm in your chest.", snd_zap, global.heartname],


[scr_changedummyseq, 1, ch_shocked, ch_shocked, 1],
[scr_changedummyseq, 0, asq_mr_shocked, asq_mr_shockedext],

[css_makeobj, ph_3.x, ph_3.y, obj_ratgodflair, depth],
[scr_textbox, ph_3.x,ph_3.y-200, @"ENOUGH ALREADY!!", snd_godtalkin, "???"],
[scr_textbox, ph_3.x,ph_3.y-200, @"You two...", snd_godtalkin, "???"],
[scr_textbox, ph_3.x,ph_3.y-200, @"I was almost finished...", snd_godtalkin, "???"],
[scr_textbox, ph_3.x,ph_3.y-200, @"All these years...", snd_godtalkin, "???"],

[scr_textbox, ph_1.x,ph_1.y-400, @"Arty, what the hell is
this bit you're doing?", snd_madtalk, global.ratname],

[scr_textbox, ph_2.x,ph_2.y-400, @"It's not me!", snd_zap, global.heartname],

[scr_textbox, ph_3.x,ph_3.y-200, @"Stay out of my way!", snd_godtalkin, "???"],

[scr_endcutscene, E2],
)


