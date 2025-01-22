
ds_list_add(que,
[cs_fadeblack, 1, 0],
[scr_makedummy, ph_1.x+900,ph_1.y, asq_mr_dashdash, asq_mr_dashdash, -1, 1.5],
[cs_fadeblack, 0, 120],
[scr_moveobj, obj_seqdummy, 0, ph_1.x, ph_1.y, 4],

[scr_wait, 230],
[scr_changedummyseq, 0, asq_mr_trip1, cs_mr_tripped],
[scr_changeratface, mr_face12],

[scr_textbox, ph_1.x,ph_1.y-300, @"Oof!", snd_madtalk, global.ratname],


[scr_makedummy, ph_2.x,ph_2.y-30, ch_spin, csh_shrug, -1, 1.5],
[scr_changedummyseq, 1, ch_spin, csh_idle],

[scr_changevar, obj_seqdummy, 1, "float", true],

[scr_wait, 100],

[scr_makedummy, ph_9.x+30,ph_9.y, cs_mr_tripped, cs_mr_tripped, 1, 0.5],
[scr_makedummy, ph_9.x,ph_9.y, csh_idle, csh_idle, 1, 0.8],
[scr_changevar, obj_seqdummy, 3, "float", true],

[scr_moveobj, obj_cameraman, 0, ph_9.x, ph_9.y, 9999],
[scr_textbox, ph_9.x,ph_9.y-300, @"There it is!", snd_zap, global.heartname],


[scr_moveobj, obj_cameraman, 0, room_width/2, room_height/2, 9999],

[scr_moveobj, obj_seqdummy, 1, ph_5.x, ph_5.y, 5],
[scr_changeratface, mr_face13],
[scr_changedummyseq, 1, csh_uploading],

[scr_wait, 160],
[scr_changedummyseq, 0, asq_mr_tired],
[scr_wait, 160],
[scr_changedummyseq, 0, asq_mr_shocked, asq_mr_shockedext],
[cs_playsound, snd_taser],
[css_makeobj, ph_5.x,ph_5.y-30, obj_makesparks, 0],
[scr_changevar, obj_makesparks, 0, "on", true],
[scr_changeheartface, h_face16],
[scr_changedummyseq, 1, csh_shocked],

[scr_wait, 160],
[scr_deleteobj, obj_makesparks, 0],

[scr_changedummyseq, 1, ch_dizzy],
[scr_wait, 160],
[scr_changedummyseq, 1, csh_headbonk],
//[scr_wait, 160],
//[scr_changedummyseq, 1, ch_spin, csh_thumbsup, 1],
//[scr_changeheartface, h_face4],

[scr_textbox, ph_2.x,ph_2.y-300, @"Woah! That's really something else!", snd_zap, global.heartname],

[scr_changedummyseq, 0, asq_mr_crossed],

[scr_textbox, ph_1.x,ph_1.y-300, @"So, you think you can get
us out of here now?", snd_madtalk, global.ratname],

[scr_changeheartface, h_face6],
[scr_changedummyseq, 1, csh_defib2, csh_defib4, 1],

[scr_changedummyseq, 0, asq_mr_shocked, asq_mr_shockedext],
[scr_textbox, ph_2.x,ph_2.y-300, @"I'm pretty sure I could take over
the world right now!", snd_zap, global.heartname],

[scr_changedummyseq, 0, asq_mr_headclutch],
[scr_textbox, ph_1.x,ph_1.y-300, @"Not you too!?", snd_madtalk, global.ratname],

[scr_wait, 100],

[scr_changeheartface, h_face4],
[scr_changedummyseq, 1, csh_defib3],
[scr_textbox, ph_2.x,ph_2.y-300, @"...Juuuust kidding!", snd_zap, global.heartname],

[scr_changeheartface, h_face1],

[scr_spookytext, 100, 100, "...I'm not done...", 120],

[scr_changedummyseq, 1, csh_idle],
[scr_changedummyseq, 0, asq_mr_crossed, asq_mr_crossed, 1],

[css_makeobj, ph_3.x, ph_3.y, obj_ratgodflair, depth],
[scr_textbox, ph_3.x, ph_3.y-300, @"You cannot escape me.", snd_godtalkin, global.virusname],
[scr_textbox, ph_3.x, ph_3.y-300, @"You will die here and now.
I have foreseen it.", snd_godtalkin, global.virusname],

[scr_textbox, ph_1.x,ph_1.y-300, @"You some kinda fortune teller, now?", snd_madtalk, global.ratname],

[scr_textbox, ph_3.x, ph_3.y-300, @"I have calculated all possible
outcomes.", snd_godtalkin, global.virusname],
[scr_textbox, ph_3.x, ph_3.y-300, @"They all end-", snd_godtalkin, global.virusname],
[scr_changevar, obj_ratgodflair, 0, "sprite_index", rg_ratgod2],
[css_makeobj, 0, 0, obj_controlpixelation, depth],
[cs_playsound, Cmn_MagicSquare],
[scr_changedummyseq, 0, asq_mr_shocked, asq_mr_shockedext],
[scr_changedummyseq, 1, ch_shocked],
[css_makeobj, room_width/2, room_height/2, obj_makeblackbg, 350],
[scr_wait, 100],
[scr_textbox, ph_3.x, ph_3.y-300, @"...with your death!", snd_godtalkin, global.virusname],

//[scr_changedummyseq, 0, asq_mr_angry, asq_mr_angryext],
//[scr_changedummyseq, 1, csh_idle],
//[scr_changeheartface, h_face3],
//[scr_textbox, ph_1.x,ph_1.y-300, @"Come on, Arty!
//Let's do this!", snd_madtalk, global.ratname],
//[scr_changeheartface, h_face15],
//[scr_wait, 60],
//[scr_changedummyseq, 0, asq_mr_humph],
//[scr_textbox, ph_1.x,ph_1.y-300, @"...And don't start crying again!", snd_madtalk, global.ratname],
//[scr_changedummyseq, 1, csh_crying],
//[scr_changeheartface, h_face3],
//[scr_wait, 120],
//[scr_textbox, ph_2.x,ph_2.y-300, @"I...", snd_zap, global.heartname],
//[scr_changeheartface, h_face8],
//[scr_changedummyseq, 1, csh_flex, csh_flex2],
//[scr_textbox, ph_2.x,ph_2.y-300, @"I'm with you, |||||"
//+ string(global.ratname) + "!", snd_zap, global.heartname],

[scr_endcutscene, E9],
)


