
ds_list_add(que,
[cs_fadeblack, 1, 0],
[scr_makedummy, ph_1.x+900,ph_1.y, asq_mr_dashdash, asq_mr_dashdash, -1, 1.5],
[cs_fadeblack, 0, 120],
[scr_moveobj, obj_seqdummy, 0, ph_1.x, ph_1.y, 4],

[scr_wait, 260],
[scr_changedummyseq, 0, asq_mr_trip1, cs_mr_tripped],
[scr_changeratface, mr_face12],

[scr_makedummy, ph_2.x,ph_2.y-30, ch_shocked, ch_shocked, -1, 1.5],
[scr_changevar, obj_seqdummy, 1, "float", true],

[scr_textbox, ph_2.x,ph_2.y-300, @"The meteorite!", snd_zap, global.heartname],

[scr_changeratface, mr_face13],
[scr_changedummyseq, 1, csh_uploading],

[scr_wait, 160],
[scr_changedummyseq, 0, asq_mr_tired],
[scr_wait, 160],
[scr_changedummyseq, 0, asq_mr_shocked, asq_mr_shockedext],
[cs_playsound, snd_taser],
[scr_changedummyseq, 1, ch_shocked],

[scr_wait, 160],
[scr_changedummyseq, 1, ch_dizzy],
[scr_wait, 160],
[scr_changedummyseq, 1, csh_headbonk],
[scr_changeheartface, h_face7],
[scr_wait, 160],
[scr_changedummyseq, 1, ch_spin, csh_thumbsup, 1],
[scr_changeheartface, h_face4],

[scr_textbox, ph_2.x,ph_2.y-300, @"Woah! That's really something else!", snd_zap, global.heartname],

[scr_changedummyseq, 0, asq_mr_crossed],

[scr_textbox, ph_1.x,ph_1.y-300, @"So, you think you can get
us out of here now?", snd_madtalk, global.ratname],

[scr_changeheartface, h_face6],
[scr_textbox, ph_2.x,ph_2.y-300, @"I'm pretty sure I could take over
the world right now!", snd_zap, global.heartname],

[scr_changedummyseq, 0, asq_mr_headclutch],
[scr_textbox, ph_1.x,ph_1.y-300, @"Not you too...!", snd_madtalk, global.ratname],

[scr_changeheartface, h_face4],
[scr_textbox, ph_2.x,ph_2.y-300, @"-Just kidding!", snd_zap, global.heartname],

[scr_changedummyseq, 1, csh_idle],
[scr_changeheartface, h_face6],

[scr_spookytext, 100, 100, "...hmmm hmmm...", 120],
[scr_spookytext, 200, 200, "...Not so fast...", 120],

[scr_changedummyseq, 0, asq_mr_crossed, asq_mr_crossed, 1],

[css_makeobj, ph_3.x, ph_3.y, obj_ratgodflair, depth],
[scr_textbox, ph_3.x, ph_3.y-300, @"You cannot escape me.", snd_godtalkin, "???"],
[scr_textbox, ph_3.x, ph_3.y-300, @"You will die here and now.
I have foreseen it.", snd_godtalkin, "???"],

[scr_textbox, ph_1.x,ph_1.y-300, @"You some kinda fortune teller?", snd_madtalk, global.ratname],

[scr_textbox, ph_3.x, ph_3.y-300, @"I have calculated all possible
outcomes.", snd_godtalkin, "???"],
[scr_textbox, ph_3.x, ph_3.y-300, @"They all end the same-", snd_godtalkin, "???"],
[scr_textbox, ph_3.x, ph_3.y-300, @"...with your death!", snd_godtalkin, "???"],

[scr_changedummyseq, 0, asq_mr_evil],
[scr_textbox, ph_1.x,ph_1.y-300, @"Then we'll just have to do
something you didn't account for!", snd_madtalk, global.ratname],


[scr_endcutscene, E9],
)


