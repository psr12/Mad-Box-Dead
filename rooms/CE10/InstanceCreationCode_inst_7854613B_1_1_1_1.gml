
ds_list_add(que,
[scr_makedummy, ph_1.x+900,ph_1.y, asq_mr_dashdash, asq_mr_dashdash, -1, 1.5],
[scr_moveobj, obj_seqdummy, 0, ph_1.x, ph_1.y, 4],

[scr_makedummy, ph_2.x,ph_2.y-100, ch_backwards,ch_backwards, -1, 1.5],
[scr_changevar, obj_seqdummy, 1, "float" , true],

[scr_wait, 260],
[scr_changedummyseq, 0, asq_mr_idle],

[scr_wait, 100],
[scr_changedummyseq, 0, asq_mr_backemote2, asq_mr_backemote2, 1],

[scr_textbox, ph_2.x,ph_2.y-400, @"...", snd_zap, global.heartname],

[scr_changedummyseq, 1, csh_screaming, csh_shrug, 1 ],
[scr_changeheartface, h_face8],

[scr_changedummyseq, 0, asq_mr_idle, asq_mr_idle, -1],

[scr_textbox, ph_2.x,ph_2.y-400, @"What the hell is this?!", snd_zap, global.heartname],

[scr_changedummyseq, 0, cs_mr_humph],
[scr_changeratface, mr_face6],
[scr_textbox, ph_1.x,ph_1.y-400, @"Awww... Too bad!
I guess he's not here, after all!", snd_madtalk, global.ratname],


[scr_changedummyseq, 1, csh_headbonk],
[scr_changeheartface, h_face5],

[scr_textbox, ph_2.x,ph_2.y-400, @"W-Why is a kid here?!", snd_zap, global.heartname],
[scr_textbox, ph_2.x,ph_2.y-400, @"Where is the doctor?!", snd_zap, global.heartname],

[scr_textbox, ph_2.x,ph_2.y-400, @"I-!", snd_zap, global.heartname],
[scr_changedummyseq, 1, csh_shrug],
[scr_changeheartface, h_face3],
[scr_textbox, ph_2.x,ph_2.y-400, @"I don't understand...", snd_zap, global.heartname],

[scr_wait, 120],
[scr_changeratface, mr_face5],
[scr_wait, 180],
[scr_changeratface, mr_face2],

[scr_textbox, ph_1.x,ph_1.y-400, @"Ugh.", snd_madtalk, global.ratname],
[scr_textbox, ph_1.x,ph_1.y-400, @"Look.", snd_madtalk, global.ratname],
[scr_changeratface, mr_face9],
[scr_textbox, ph_1.x,ph_1.y-400, @"The doctor...", snd_madtalk, global.ratname],
[scr_changedummyseq, 0, asq_mr_crossed],
[scr_textbox, ph_1.x,ph_1.y-400, @"They were a good person, yeah? 
To humans, I mean.", snd_madtalk, global.ratname],

[scr_changedummyseq, 1, csh_flex, csh_flex2],
[scr_changeheartface, h_face8],
[scr_textbox, ph_2.x,ph_2.y-400, @"The best!", snd_zap, global.heartname],

[scr_textbox, ph_1.x,ph_1.y-400, @"Would they die to 
save someone?", snd_madtalk, global.ratname],

[scr_wait, 200],
[scr_changedummyseq, 1, csh_idle],
[scr_changeheartface, h_face1],
[scr_textbox, ph_2.x,ph_2.y-400, @"Ah, I get it...", snd_zap, global.heartname],
[scr_changedummyseq, 1, csh_shrug],
[scr_textbox, ph_2.x,ph_2.y-400, @"You think the doctor used 
this pod to save the kid.", snd_zap, global.heartname],

[scr_wait, 200],
[scr_changedummyseq, 1, csh_screaming, csh_shrug],
[scr_changeheartface, h_face8],
[scr_textbox, ph_2.x,ph_2.y-400, @"B-but that's...!", snd_zap, global.heartname],

[scr_spookytext, 300, 100, "...Thank you...", 1*120 ],
[scr_spookytext, 400, 200, "...For letting me in...", 1*120],

[scr_makeflair, 500, 500, spr_redalert, 999],
[scr_playmusic, song_zombie],
[scr_shakecamera, 100],
[scr_changevar, obj_tubebubbles, 0, "wait", 0],
[scr_wait, 40],
[scr_changedummyseq, 1, ch_shocked],
[scr_changedummyseq, 0, asq_mr_shocked, asq_mr_shockedext],

[scr_wait, 300],
[scr_textbox, ph_2.x,ph_2.y-400, @"W-what?! ", snd_zap, global.heartname],
[scr_changedummyseq, 1, ch_shockedbackwards, ch_shockedbackwards, -1],
[scr_textbox, ph_2.x,ph_2.y-400, @"The system's going haywire!", snd_zap, global.heartname],
[scr_textbox, ph_2.x,ph_2.y-400, @"The cryopod! It's malfunctioning!", snd_zap, global.heartname],
[scr_changedummyseq, 1, csh_shrug, csh_shrug, 1],
[scr_changeheartface, h_face3],
[scr_textbox, ph_2.x,ph_2.y-400, @"We have to hit the emergency reset!", snd_zap, global.heartname],
[scr_textbox, ph_2.x,ph_2.y-400, @"It's at the far end of the lab!
Hurry!", snd_zap, global.heartname],

[cs_playsound, snd_die],
[scr_moveobj, obj_seqdummy, 1, -999, -999, 999],
[scr_wait, 180],
[scr_changedummyseq, 0, cs_mr_humph],
[scr_changeratface, mr_face12],

[scr_wait, 300],


[scr_moveobj, obj_seqdummy, 1, ph_2.x, ph_2.y-50, 999],
[scr_changedummyseq, 1, csh_shrug],
[scr_changeheartface, h_face3],
[scr_textbox, ph_2.x,ph_2.y-400, string(global.ratname) + @"! Come on!", snd_zap, global.heartname],

[scr_wait, 100],

[scr_textbox, ph_1.x,ph_1.y-400, @"Someone's gotta pay
for what happened to me.", snd_madtalk, global.ratname],
[scr_textbox, ph_1.x,ph_1.y-400, @"...", snd_madtalk, global.ratname],
[scr_changedummyseq, 0, cs_mr_humph],
[scr_changeratface, mr_face14],
[scr_textbox, ph_1.x,ph_1.y-400, @"But this doesn't feel right...", snd_madtalk, global.ratname],
[scr_wait, 110],
[scr_changedummyseq, 0, asq_mr_paws],
[scr_wait, 280],
[scr_changedummyseq, 0, cs_mr_dtf],
[scr_changeratface, mr_face3],
[scr_textbox, ph_1.x,ph_1.y-400, @"Alright, let's go!", snd_madtalk, global.ratname],

[scr_changeheartface, h_face1],
[scr_textbox, ph_2.x,ph_2.y-400, @"Hmmm...", snd_zap, global.heartname],
[scr_textbox, ph_2.x,ph_2.y-400, @"I think you're finally 
getting it.", snd_zap, global.heartname],
[scr_changeheartface, h_face2],
[scr_textbox, ph_2.x,ph_2.y-400, @"...you psychotic furball.", snd_zap, global.heartname],

[scr_changedummyseq, 1, ch_spin, csh_thumbsup],
[scr_changeheartface, h_face4],
[scr_textbox, ph_2.x,ph_2.y-400, @"Alright! Full speed ahead!", snd_zap, global.heartname],

[scr_endcutscene, E2],
)


