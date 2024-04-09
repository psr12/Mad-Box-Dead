
ds_list_add(que,
[cs_fadeblack, 1, 0],
[scr_makedummy, ph_1.x-900,ph_1.y, asq_mr_dashdash, asq_mr_dashdash, 1, 1.5],
[cs_fadeblack, 0, 120],
[scr_moveobj, obj_seqdummy, 0, room_width/2, ph_1.y, 4],

[scr_wait, 260],
[scr_changedummyseq, 0, asq_mr_idle],
[scr_wait, 120],
[scr_changeratface, mr_face13],
[scr_changedummyseq, 0, cs_mr_humph, cs_mr_humph, 1],
[scr_wait, 30],
[scr_changedummyseq, 0, cs_mr_humph, cs_mr_humph, -1],
[scr_wait, 30],
[scr_changedummyseq, 0, cs_mr_humph, cs_mr_humph, 1],
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

[scr_textbox, ph_2.x,ph_2.y-300, @"*Paws on your chest,||||
Matching my frequency.||||
Under arrest,||||
For public indecency.", snd_zap, global.heartname],


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

[scr_changedummyseq, 1, csh_explaining],
[scr_changeheartface, h_face1],
[scr_textbox, ph_2.x,ph_2.y-300, @"I couldn't find you,
and a bunch of rats were 
saying mean things to me.", snd_zap, global.heartname],
[scr_changedummyseq, 1, csh_shrug],
[scr_changeheartface, h_face4],
[scr_textbox, ph_2.x,ph_2.y-300, @"But they couldn't catch me!
Ha hahahaha!", snd_zap, global.heartname],

[scr_textbox, ph_1.x,ph_1.y-300, @"...So what's going on?", snd_madtalk, global.ratname],

[scr_changedummyseq, 1, csh_waggle],
[scr_changeheartface, h_face10],
[scr_textbox, ph_2.x,ph_2.y-300, @"The virus stuck us in cyberspace.", snd_zap, global.heartname],

[scr_textbox, ph_1.x,ph_1.y-300, @"Why not just kill us?", snd_madtalk, global.ratname],

[scr_changedummyseq, 1, csh_flex, csh_flex2],
[scr_changeheartface, h_face4],
[scr_textbox, ph_2.x,ph_2.y-300, @"Hah! Must be my 'antivirus'.", snd_zap, global.heartname],

[scr_changedummyseq, 1, csh_explaining],
[scr_changeheartface, h_face1],
[scr_textbox, ph_2.x,ph_2.y-300, @"I'm a little tougher than 
the average heart.", snd_zap, global.heartname],

[scr_textbox, ph_1.x,ph_1.y-300, @"So now what?", snd_madtalk, global.ratname],

[scr_changedummyseq, 1, csh_yousee],
[scr_changeheartface, h_face1],
[scr_textbox, ph_2.x,ph_2.y-300, @"We should be able to tap
into the lab's network.", snd_zap, global.heartname],
[scr_textbox, ph_2.x,ph_2.y-300, @"The meteorite in the power room
is some kind of infinite energy source.", snd_zap, global.heartname],

[scr_textbox, ph_1.x,ph_1.y-300, @"I guess that's how everthing's
still running.", snd_madtalk, global.ratname],

[scr_changedummyseq, 1, csh_explaining],
[scr_textbox, ph_2.x,ph_2.y-300, @"I bet we can beat 
the virus with that!", snd_zap, global.heartname],


[scr_changedummyseq, 1, csh_idle, csh_idle, -1],

[scr_changevar, obj_myfrequency, 0, "state", 6],
[scr_spookytext, 100, 100, "...I see...", 120],
[scr_changedummyseq, 1, csh_idle, csh_idle, 1],
[scr_changedummyseq, 0, asq_mr_angry, asq_mr_angryext, -1],

[scr_spookytext, 200, 200, "...So that's your decision...", 120],
[scr_playmusic, snd_humminglights, 2],

[scr_changedummyseq, 0, asq_mr_angry, asq_mr_angryext, 1],

[scr_moveobj, obj_cameraman, 0, room_width/2+500, room_height/2, 1],
[scr_wait, 240],

[cs_playsound, snd_static],
[css_makeobj, 0, 0, obj_controlpixelation, depth],
[css_makeobj, ph_3.x, ph_3.y, obj_ratgodflair, depth],
[scr_textbox, ph_3.x, ph_3.y-300, @"I won't just let
you have your way.", snd_godtalkin, global.virusname],
[scr_textbox, ph_3.x, ph_3.y-300, @"The meteorite is mine.", snd_godtalkin, global.virusname],
[scr_textbox, ph_3.x, ph_3.y-300, @"I'm in control, here.", snd_godtalkin, global.virusname],
[scr_textbox, ph_3.x, ph_3.y-300, @"Now...", snd_godtalkin, global.virusname],
[scr_textbox, ph_3.x, ph_3.y-300, @"You, who have died once...", snd_godtalkin, global.virusname],

[scr_changevar, obj_ratgodflair, 0, "sprite_index", rg_ratgod2],

[scr_textbox, ph_3.x, ph_3.y-300, @"Return to the grave!", snd_godtalkin, global.virusname],
[cs_playsound, snd_big_impact, 0.1],
[scr_shakecamera, 50],
[cs_camerazoom, 99, 0.02],
[scr_wait, 120],



[scr_endcutscene, E8],
)


