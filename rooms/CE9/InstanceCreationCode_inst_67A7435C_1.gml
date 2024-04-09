
ds_list_add(que,
[cs_fadeblack, 1, 0],
[scr_makedummy, ph_1.x-900,ph_1.y, asq_mr_dashdash, asq_mr_dashdash, 1, 1.5],
[cs_fadeblack, 0, 120],
[scr_moveobj, obj_seqdummy, 0, room_width/2, ph_1.y, 4],

[scr_wait, 260],
[scr_changedummyseq, 0, asq_mr_idle],
[scr_wait, 120],
[scr_changedummyseq, 0, asq_mr_crossed, asq_mr_crossed, 1],
[scr_wait, 30],
[scr_changedummyseq, 0, asq_mr_crossed, asq_mr_crossed, -1],
[scr_wait, 30],
[scr_changedummyseq, 0, asq_mr_crossed, asq_mr_crossed, 1],
[scr_textbox, ph_1.x,ph_1.y-300, @"...Hello? Arty?", snd_madtalk, global.ratname],

[scr_spookytext, 100, 100, "...Paws...", 120],
[scr_spookytext, 200, 200, "...chest...", 120*2],

[scr_textbox, ph_1.x,ph_1.y-300, @"...?", snd_madtalk, global.ratname],
[scr_changedummyseq, 0, asq_mr_paws],
[scr_textbox, ph_1.x,ph_1.y-300, @"Like this?", snd_madtalk, global.ratname],

[scr_moveobj, obj_cameraman, 0, room_width/2, room_height/2-50, 1],

[scr_wait, 260], //minigame
[css_makeobj, room_width/2+80, room_height/2, obj_myfrequency, depth],
[cs_hold],


[scr_changedummyseq, 0, asq_mr_idle], //arty tunes in
[scr_moveobj, obj_cameraman, 0, room_width/2, room_height/2, 1],
[scr_wait, 120],

[scr_moveobj, obj_cameraman, 0, room_width/2+200, room_height/2, 0.5],
[scr_makeflair, ph_2.x,ph_2.y-20, h_body1, 1.5],
[scr_changevar, obj_flair, 0, "drawHologram", true],

[scr_wait, 240], //arty fully appears
[scr_deleteobj, obj_flair, 0],
[scr_makedummy, ph_2.x,ph_2.y-30, csh_turntable, csh_turntable, 1, 1.5],
[scr_changevar, obj_seqdummy, 1, "float", true],
[scr_changeheartface, h_face8],

[scr_wait, 320], //mr annoyed
[scr_changedummyseq, 0, asq_mr_crossed],
[scr_wait, 220],
[scr_changedummyseq, 1, csh_turntable, csh_turntable, -1],

[scr_wait, 30], //arty shocked
[scr_changedummyseq, 1, ch_shocked],
[scr_moveobj, obj_seqdummy, 1, ph_2.x+150, ph_2.y-30, 15],
[scr_textbox, ph_2.x,ph_2.y-300, @"GAAAH!", snd_zap, global.heartname],
[scr_moveobj, obj_seqdummy, 1, ph_2.x, ph_2.y-30, 1],

[scr_changedummyseq, 1, csh_yousee],
[scr_changeheartface, h_face3],
[scr_textbox, ph_2.x,ph_2.y-300, @"Geez, you really scared me.", snd_zap, global.heartname],
[scr_changeheartface, h_face4],
[scr_textbox, ph_2.x,ph_2.y-300, @"...But I'm glad you're back!", snd_zap, global.heartname],
[scr_textbox, ph_1.x,ph_1.y-300, @"You're the one who left, 
idiot.", snd_madtalk, global.ratname],

[scr_changedummyseq, 1, csh_waggle],
[scr_changeheartface, h_face1],
[scr_textbox, ph_2.x,ph_2.y-300, @"A bunch of rats were 
saying mean things to me.", snd_zap, global.heartname],
[scr_changedummyseq, 1, csh_shrug],
[scr_changeheartface, h_face4],
[scr_textbox, ph_2.x,ph_2.y-300, @"But I just flew away!
Ha ha ha ha ha!", snd_zap, global.heartname],

[scr_textbox, ph_1.x,ph_1.y-300, @"...So what's going on?", snd_madtalk, global.ratname],

[scr_changedummyseq, 1, csh_waggle],
[scr_changeheartface, h_face10],
[scr_textbox, ph_2.x,ph_2.y-300, @"The virus stuck us in here.
It must be a lab computer.", snd_zap, global.heartname],

[scr_textbox, ph_1.x,ph_1.y-300, @"Why not just kill us?", snd_madtalk, global.ratname],

[scr_changedummyseq, 1, csh_flex, csh_flex2],
[scr_changeheartface, h_face4],
[scr_textbox, ph_2.x,ph_2.y-300, @"Hah! I'd like to seem them try!
I've got a WICKED antivirus!", snd_zap, global.heartname],


[scr_textbox, ph_1.x,ph_1.y-300, @"So now what?", snd_madtalk, global.ratname],

[scr_changedummyseq, 1, csh_yousee],
[scr_changeheartface, h_face1],
[scr_textbox, ph_2.x,ph_2.y-300, @"If this IS a lab computer...", snd_zap, global.heartname],
[scr_textbox, ph_2.x,ph_2.y-300, @"We should be able to tap
into the lab's network.", snd_zap, global.heartname],

[scr_changeheartface, h_face10],
[scr_textbox, ph_2.x,ph_2.y-300, @"I'm sure there's SOMETHING that
can get us out of here.", snd_zap, global.heartname],


[scr_spookytext, 100, 100, "...Mmmm hmmm hmmm...", 120],
[scr_spookytext, 200, 200, "...Not so fast...", 120],

[scr_moveobj, obj_cameraman, 0, room_width/2+500, room_height/2, 1],
[scr_wait, 240],

[css_makeobj, ph_3.x, ph_3.y, obj_ratgodflair, depth],
[scr_textbox, ph_3.x, ph_3.y-300, @"I heard you were talking shit.", snd_godtalkin, "???"],


[scr_endcutscene, E8],
)


