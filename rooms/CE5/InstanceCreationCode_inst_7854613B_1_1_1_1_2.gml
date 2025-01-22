
ds_list_add(que,


[scr_makedummy, ph_1.x-900,ph_1.y, asq_mr_dashdash, asq_mr_dashdash, 1, 1.2],
[scr_moveobj, obj_seqdummy, 0, ph_1.x, ph_1.y, 4],

//[scr_makedummy, ph_3.x,ph_3.y, seq_rg_idle, seq_rg_idle, 1, 1],
//[scr_changevar, obj_seqdummy, 2, "layer", layer_get_id("RATGOD") ],
//[scr_changevar, obj_seqdummy, 2, "blue", true],
//[scr_changevar, obj_seqdummy, 2, "float", true],

[scr_wait, 240],
[scr_changedummyseq, 0, asq_mr_idle],

[cs_playsound, snd_lightsonALT],
[scr_deleteobj, obj_darkness, 0],

[scr_wait, 200],
[scr_makedummy, ph_2.x,ph_2.y-20, csh_idle, csh_idle, 1, 1.2],
[scr_changevar, obj_seqdummy, 1, "float" , true],

[scr_textbox, ph_2.x,ph_2.y-300, @"Looks like they're alright.", snd_zap, global.heartname],

[scr_changedummyseq, 0, asq_mr_shrug, asq_mr_shrugext],
[scr_textbox, ph_1.x,ph_1.y-300, @"What was that all about?", snd_madtalk, global.ratname],
[scr_changedummyseq, 1, csh_thinking],
[scr_changeheartface, h_face10],
[scr_textbox, ph_2.x,ph_2.y-300, @"I'm... not sure.", snd_zap, global.heartname],
[scr_textbox, ph_2.x,ph_2.y-300, @"It happened as soon as we showed up.
It can't be a coincidence.", snd_zap, global.heartname],

[scr_changedummyseq, 0, cs_mr_humph],
[scr_changeratface, mr_face5],
[scr_textbox, ph_1.x,ph_1.y-300, @"...", snd_madtalk, global.ratname],
[scr_textbox, ph_2.x,ph_2.y-300, @"...", snd_zap, global.heartname],
[scr_wait, 200],

[scr_changedummyseq, 1, csh_thinking, csh_thinking, -1],
[scr_changeheartface, h_face9],
[scr_textbox, ph_2.x,ph_2.y-300, @"You're gonna have to take
care of her, you know...", snd_zap, global.heartname],

[scr_changeratface, mr_face13],
[scr_textbox, ph_1.x,ph_1.y-300, @"What?", snd_madtalk, global.ratname],
[scr_changedummyseq, 1, csh_shrug],
[scr_textbox, ph_2.x,ph_2.y-300, @"The kid.", snd_zap, global.heartname],
[scr_changeratface, mr_face5],
[scr_textbox, ph_1.x,ph_1.y-300, @"Oh, yeah...", snd_madtalk, global.ratname],
[scr_wait, 200],
[scr_changedummyseq, 0, asq_mr_shocked, asq_mr_shockedext],
[scr_textbox, ph_1.x,ph_1.y-300, @"Wait, what?!", snd_madtalk, global.ratname],
[scr_changedummyseq, 0, asq_mr_stomp2],
[scr_textbox, ph_1.x,ph_1.y-300, @"Why the hell should I?!", snd_madtalk, global.ratname],

[scr_spookytext, 100, 100, "...Shut up...", 0],

[scr_changedummyseq, 1, csh_flex2],
[scr_textbox, ph_2.x,ph_2.y-300, @"You DID save her, afterall.", snd_zap, global.heartname],
[scr_textbox, ph_2.x,ph_2.y-300, @"It's YOUR responsibility.", snd_zap, global.heartname],

[scr_changedummyseq, 0, asq_mr_headclutch],
[scr_textbox, ph_1.x,ph_1.y-300, @"No way! YOU do it!", snd_madtalk, global.ratname],

[scr_changedummyseq, 1, csh_yousee],
[scr_changeheartface, h_face1],
[scr_textbox, ph_2.x,ph_2.y-300, @"I'm only a hologram, remember?", snd_zap, global.heartname],

[scr_spookytext, 200, 200, "...Shut up...", 0],

[scr_changedummyseq, 1, csh_thinking],
[scr_changeheartface, h_face10],
[scr_textbox, ph_2.x,ph_2.y-300, @"I guess I could tell them 
what to do?", snd_zap, global.heartname],
[scr_textbox, ph_2.x,ph_2.y-300, @"You'd still have to stay here,
since I'm in your chest.", snd_zap, global.heartname],


[scr_changedummyseq, 1, ch_shocked, ch_shocked, 1],
[scr_changedummyseq, 0, asq_mr_shocked, asq_mr_shockedext, 1],

[scr_shakecamera, 30],
[cs_playsound, snd_static],
[css_makeobj, ph_3.x, ph_3.y, obj_ratgodflair, depth],
[css_makeobj, ph_3.x, ph_3.y, obj_controlpixelation, depth],
[scr_changevar, obj_ratgodflair, 0, "sprite_index", rg_ratgod3],
[scr_playmusic, snd_humminglights, 13],
[scr_textbox, ph_3.x,ph_3.y-300, @"SHUT UP!", snd_godtalkin, "???"],
[scr_changevar, obj_ratgodflair, 0, "sprite_index", rg_ratgod1],


[scr_textbox, ph_3.x,ph_3.y-300, @"I'm done with you two!", snd_godtalkin, "???"],
[scr_textbox, ph_3.x,ph_3.y-300, @"Just stay out of my way!", snd_godtalkin, "???"],

[scr_changedummyseq, 0, cs_mr_evil],
[scr_changeratface, mr_face9],
[scr_textbox, ph_1.x,ph_1.y-300, @"Who are you!?", snd_madtalk, global.ratname],

[scr_changedummyseq, 1, csh_idle],
[scr_changeheartface, h_face3],

[scr_changevar, obj_ratgodflair, 0, "sprite_index", rg_ratgod2],
[scr_textbox, ph_3.x,ph_3.y-300, @"I'm what you might call
a 'virus'.", snd_godtalkin, "???"],

[scr_changeheartface, h_face1],
[scr_changedummyseq, 0, asq_mr_crossed],

[scr_textbox, ph_3.x,ph_3.y-300, @"An unwanted program that spreads
from system to system.", snd_godtalkin, global.virusname],

[scr_changevar, obj_ratgodflair, 0, "sprite_index", rg_ratgod1],

[scr_textbox, ph_3.x,ph_3.y-300, @"In this place, I found 
something incredible.", snd_godtalkin, global.virusname],

[scr_changevar, obj_ratgodflair, 0, "sprite_index", rg_ratgod2],
[scr_textbox, ph_3.x,ph_3.y-300, @"Unlimited energy.", snd_godtalkin, global.virusname],

[scr_changevar, obj_ratgodflair, 0, "sprite_index", rg_ratgod1],
[scr_textbox, ph_3.x,ph_3.y-300, @"I need electricity to survive.", snd_godtalkin, global.virusname],

[scr_changevar, obj_ratgodflair, 0, "sprite_index", rg_ratgod4],
[scr_textbox, ph_3.x,ph_3.y-300, @"Only humans can produce it, 
but they are also the only 
threat to my existence.", snd_godtalkin, global.virusname],

[scr_textbox, ph_3.x,ph_3.y-300, @"But with the meteorite...", snd_godtalkin, global.virusname],
[scr_textbox, ph_3.x,ph_3.y-300, @"I no longer needed the humans.", snd_godtalkin, global.virusname],

[scr_changedummyseq, 1, csh_hips],
[scr_changeheartface, h_face8],
[scr_changedummyseq, 0, asq_mr_headclutch, cs_mr_evil],
[scr_changeratface, mr_face9],

[scr_textbox, ph_1.x,ph_1.y-300, @"Wait, YOU'RE why all the
humans are gone?!", snd_madtalk, global.ratname],

[scr_changevar, obj_ratgodflair, 0, "sprite_index", rg_ratgod2],
[scr_textbox, ph_3.x,ph_3.y-300, @"With unlimited energy, you
can make anything you want.", snd_godtalkin, global.virusname],
[scr_textbox, ph_3.x,ph_3.y-300, @"I used it to produce my helpers.", snd_godtalkin, global.virusname],


[scr_makeflair, ph_4.x, ph_4.y, spr_beeline1, 2],
[scr_makeflair, ph_5.x, ph_5.y, spr_beeline1, 2],

[scr_changedummyseq, 0, asq_mr_shocked, asq_mr_shockedext],
[scr_changedummyseq, 1, ch_shocked, ch_shocked, 1],

[cs_playsound, snd_archive],
[scr_moveobj, obj_flair, 1, ph_6.x-100, ph_6.y-50, 20], 
[scr_changevar, obj_flair, 1, "float" , true],
[scr_moveobj, obj_flair, 2, ph_7.x+100, ph_7.y-50, 20], 
[scr_changevar, obj_flair, 2, "float" , true],
[scr_wait, 120],
[cs_playsound, snd_archive],
[scr_moveobj, obj_flair, 1, ph_6.x, ph_6.y, 20], 
[scr_moveobj, obj_flair, 2, ph_7.x, ph_7.y, 20], 
[scr_wait, 120],

[scr_changedummyseq, 0, cs_mr_evil],
[scr_changeratface, mr_face9],
[scr_textbox, ph_1.x,ph_1.y-300, @"Hmph!", snd_madtalk, global.ratname],

[scr_changedummyseq, 0, asq_mr_jump], //jump
[cs_playsound, snd_jump],
[cs_playsound, snd_lockon2],
[scr_moveobj, obj_seqdummy, 0, ph_1.x,ph_1.y-300, 10],
[scr_wait, 10],

[scr_changevar, obj_ratgodflair, 0, "sprite_index", rg_ratgod1],

[scr_changedummyseq, 0, asq_mr_spin], //homing
[cs_playsound, snd_lockon],
[scr_moveobj, obj_seqdummy, 0, ph_6.x,ph_6.y, 20], //hit
[scr_wait, 10],
[cs_playsound, snd_enemydeath],
[scr_deleteobj, obj_flair, 1],
[scr_moveobj, obj_seqdummy, 0, ph_6.x,ph_6.y-60, 3], //bounce up
[scr_wait, 50],
[cs_playsound, snd_lockon],
[scr_moveobj, obj_seqdummy, 0, ph_7.x,ph_7.y, 20], //hit 2
[scr_wait, 30],
[cs_playsound, snd_enemydeath],
[scr_deleteobj, obj_flair, 1],
[scr_moveobj, obj_seqdummy, 0, ph_7.x,ph_7.y-60, 3], //bounce
[scr_wait, 50],

[scr_changedummyseq, 0, asq_mr_jump], //drop
[cs_playsound, snd_jump],
[scr_moveobj, obj_seqdummy, 0, ph_7.x,ph_1.y, 20],
[scr_wait, 30],
[scr_changedummyseq, 0, asq_mr_idle], //land
[scr_wait, 120],

[scr_changevar, obj_ratgodflair, 0, "sprite_index", rg_ratgod6],
[scr_changedummyseq, 0, asq_mr_shrug, asq_mr_shrugext],
[scr_changedummyseq, 1, ch_fistpump],//cheer
[scr_textbox, ph_7.x,ph_1.y-250, @"You're telling me these
things killed humanity?
As if.", snd_madtalk, global.ratname],

[scr_changevar, obj_ratgodflair, 0, "sprite_index", rg_ratgod3],

[scr_textbox, ph_3.x,ph_3.y-300, @"No...", snd_godtalkin, global.virusname],
[scr_textbox, ph_3.x,ph_3.y-300, @"The first ones were different.", snd_godtalkin, global.virusname],
[scr_textbox, ph_3.x,ph_3.y-300, @"Much smaller. 
Invisible to the eye.", snd_godtalkin, global.virusname],
[scr_textbox, ph_3.x,ph_3.y-300, @"They could enter a body, and...", snd_godtalkin, global.virusname],
[scr_changevar, obj_ratgodflair, 0, "sprite_index", rg_ratgod2],
[scr_textbox, ph_3.x,ph_3.y-300, @"Stop the heart.", snd_godtalkin, global.virusname],


[cs_playsound, snd_static],
[css_makeobj, 0, 0, obj_controlpixelation, depth],
[scr_changedummyseq, 1, ch_shocked, ch_shocked, 1],
[scr_changedummyseq, 0, asq_mr_headclutch],

[css_makeobj, 0, 0, obj_glitchy, depth],
[scr_textbox, ph_2.x,ph_2.y-300, "!!!", snd_zap, global.heartname],

[scr_textbox, ph_7.x,ph_1.y-300, @"Gh...!", snd_madtalk, global.ratname],
[scr_changedummyseq, 0, asq_mr_trip1, asq_mr_trip2],


[css_makeobj, 0, 0, obj_controlpixelation, depth],
[cs_fadeblack, 1, 120*3],

[scr_playmusic, snd_blank],

[scr_moveobj, obj_cameraman, 0, ph_8.x, ph_8.y-200, 999],
[scr_moveobj, obj_seqdummy, 0, ph_8.x, ph_8.y, 999],


[scr_wait, 120*2],
[cs_fadeblack, 0, 120],
[scr_wait, 60],
[scr_changedummyseq, 0, asq_mr_tired],
[scr_wait, 120],
[scr_changedummyseq, 0, asq_mr_crossed],

[scr_textbox, ph_8.x,ph_8.y-300, @"Hmph! This again?", snd_madtalk, global.ratname],
[scr_textbox, ph_8.x,ph_8.y-300, @"I know how it goes...", snd_madtalk, global.ratname],
[scr_changedummyseq, 0, asq_mr_dashdash],
[scr_moveobj, obj_seqdummy, 0, ph_8.x+999, ph_8.y, 4],
[scr_wait, 120*2],

[scr_endcutscene, E5],
)


