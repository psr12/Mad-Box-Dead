
ds_list_add(que,

[scr_playmusic, snd_humminglights, 3],
[scr_makedummy, ph_1.x,ph_1.y, asq_mr_cheer, asq_mr_cheer, 1, 1.5],
[scr_makedummy, ph_2.x,ph_2.y-30, ch_idle, ch_idle, 1, 1.5],
[scr_changevar, obj_seqdummy, 1, "float", true],

[css_makeobj, obj_makeholes.x, obj_makeholes.y, obj_ratgodflair, depth],


[scr_textbox,  obj_makeholes.x, obj_makeholes.y-300,@"How... 
How could you defeat me-?!", snd_godtalkin, global.virusname],
[scr_textbox,  obj_makeholes.x, obj_makeholes.y-300,@"I... 
I have infinite power-!", snd_godtalkin, global.virusname],


[scr_changedummyseq, 1, csh_thinking],
[scr_changeheartface, h_face10],
[scr_textbox, ph_2.x,ph_2.y-300, @"Well I've got that, too...", snd_zap, global.heartname],

[scr_changedummyseq, 0, cs_mr_evil],
[scr_changeratface, mr_face3],
[scr_textbox, ph_1.x,ph_1.y-300, @"...plus a rat!", snd_madtalk, global.ratname],

[scr_changedummyseq, 1, csh_idle],
[scr_changeheartface, h_face1],


[scr_textbox,  obj_makeholes.x, obj_makeholes.y-300,@"No... No...", snd_godtalkin, global.virusname],
[scr_textbox,  obj_makeholes.x, obj_makeholes.y-300,@"I was almost...", snd_godtalkin, global.virusname],
[scr_textbox,  obj_makeholes.x, obj_makeholes.y-300,@"Free...", snd_godtalkin, global.virusname],


[cs_playsound, snd_die],
[scr_deleteobj, obj_ratgodflair, 0],
[scr_wait, 30],
[scr_deleteobj, obj_makeholes, 0],
[scr_playmusic, snd_blank],
[scr_wait, 120*3],

[scr_changedummyseq, 0, asq_mr_crossed],
[scr_textbox, ph_1.x,ph_1.y-300, @"...", snd_madtalk, global.ratname],
[scr_textbox, ph_1.x,ph_1.y-300, @"We're still here...", snd_madtalk, global.ratname],


[scr_changedummyseq, 1, csh_shrug],
[scr_changeheartface, h_face9],
[scr_textbox, ph_2.x,ph_2.y-300, @"What were you expecting?", snd_zap, global.heartname],


[scr_changedummyseq, 0, cs_mr_crossed, cs_mr_crossed, -1],
[scr_changeratface, mr_face5],
[scr_textbox, ph_1.x,ph_1.y-300, @"When you did this to me,
I woke up after I beat you.", snd_madtalk, global.ratname],

[scr_changedummyseq, 1, csh_explaining],
[scr_changeheartface, h_face14],
[scr_textbox, ph_2.x,ph_2.y-300, @"That's because I let you out.
Now that the virus is gone...", snd_zap, global.heartname],

[scr_textbox, ph_1.x,ph_1.y-300, @"So then how do we 
get out?", snd_madtalk, global.ratname],

[scr_changedummyseq, 1, csh_shrug],
[scr_changeheartface, h_face11],
[scr_textbox, ph_2.x,ph_2.y-300, @"Beats me.", snd_zap, global.heartname],

[scr_changedummyseq, 0, asq_mr_shrug, asq_mr_shrugext],
[scr_textbox, ph_1.x,ph_1.y-300, @"Do you always give up this easily?", snd_madtalk, global.ratname],
[scr_textbox, ph_1.x,ph_1.y-300, @"No wonder all those rats died.", snd_madtalk, global.ratname],

[scr_changedummyseq, 1, csh_idle],
[scr_changeheartface, h_face6],
[scr_textbox, ph_2.x,ph_2.y-300, @"!!!", snd_zap, global.heartname],
[scr_changedummyseq, 1, csh_screaming, csh_shrug],
[scr_changeheartface, h_face8],
[scr_textbox, ph_2.x,ph_2.y-300, @"Do you seriously think
they died because I just
wasn't trying hard enough?!", snd_zap, global.heartname],
[scr_changedummyseq, 0, cs_mr_crossed],
[scr_changeratface, mr_face5],
[scr_textbox, ph_2.x,ph_2.y-300, @"There isn't anything I 
wouldn't give-", snd_zap, global.heartname],
[scr_changedummyseq, 1, csh_droopy],
[scr_changeheartface, h_face3],
[scr_wait, 80],
[scr_textbox, ph_2.x,ph_2.y-300, @"...just to go back...", snd_zap, global.heartname],

[scr_wait, 300],
[scr_textbox, ph_1.x,ph_1.y-300, @"...", snd_madtalk, global.ratname],
[scr_textbox, ph_1.x,ph_1.y-300, @"Go back, huh?...", snd_madtalk, global.ratname],
[scr_wait, 200],
[scr_changeratface, mr_face11],
[scr_textbox, ph_1.x,ph_1.y-300, @"Ah!", snd_madtalk, global.ratname],
[scr_changeratface, mr_face6],
[scr_textbox, ph_1.x,ph_1.y-300, @"I've got it!", snd_madtalk, global.ratname],

[scr_changedummyseq, 1, csh_idle],
[scr_changeheartface, h_face1],

[scr_textbox, ph_1.x,ph_1.y-300, @"The solution to all our problems!", snd_madtalk, global.ratname],
[scr_changedummyseq, 0, cs_mr_humph],
[scr_textbox, ph_1.x,ph_1.y-300, @"We just need to go
back in time!", snd_madtalk, global.ratname],
[scr_textbox, ph_1.x,ph_1.y-300, @"Haha hah ha ha ha!", snd_madtalk, global.ratname],

[scr_changedummyseq, 1, csh_shrug],
[scr_changeheartface, h_face3],
[scr_textbox, ph_2.x,ph_2.y-300, @"Oh, no... You've really lost it...", snd_zap, global.heartname],

[scr_changedummyseq, 0, cs_mr_crossed],
[scr_changeheartface, h_face1],
[scr_textbox, ph_1.x,ph_1.y-300, @"No! I'm serious!", snd_madtalk, global.ratname],
[scr_textbox, ph_1.x,ph_1.y-300, @"We've got infinite energy, right?", snd_madtalk, global.ratname],

[scr_changeheartface, h_face1],
[scr_textbox, ph_2.x,ph_2.y-300, @"...", snd_zap, global.heartname],

[scr_changedummyseq, 1, csh_thinking],
[scr_changeheartface, h_face10],
[scr_textbox, ph_2.x,ph_2.y-300, @"...", snd_zap, global.heartname],
[scr_textbox, ph_2.x,ph_2.y-300, @"Hmm...", snd_zap, global.heartname],
[scr_textbox, ph_2.x,ph_2.y-300, @"Give me a second...", snd_zap, global.heartname],

[scr_playmusic, snd_radio],
[scr_changedummyseq, 1, csh_idle],
[scr_changeheartface, h_face12],

[scr_wait, 240],
[scr_playmusic, snd_blank],
[scr_changedummyseq, 1, ch_spin, csh_thumbsup],
[scr_changeheartface, h_face4],

[scr_changedummyseq, 0, asq_mr_shocked, asq_mr_shockedext],
[scr_textbox, ph_2.x,ph_2.y-300, @"You were right!", snd_zap, global.heartname],
[scr_changedummyseq, 0, asq_mr_idle],

[scr_changedummyseq, 1, csh_bald],
[scr_changeheartface, h_face7],
[scr_textbox, ph_2.x,ph_2.y-300, @"It's amazing how easy it is
to do calculations now!", snd_zap, global.heartname],
[scr_wait, 44],

[scr_changedummyseq, 1, csh_explaining],
[scr_changeheartface, h_face4],
[scr_wait, 44],

[scr_textbox, ph_2.x,ph_2.y-300, @"I think I can take us back!", snd_zap, global.heartname],
[scr_changeheartface, h_face2],
[scr_textbox, ph_2.x,ph_2.y-300, @"HOWEVER-", snd_zap, global.heartname],
[scr_changeheartface, h_face1],
[scr_textbox, ph_2.x,ph_2.y-300, @"I'll lose access to the 
meteorite once we go back.", snd_zap, global.heartname],

[scr_changedummyseq, 1, csh_idle],
[scr_changedummyseq, 0, cs_mr_evil],
[scr_changeratface, mr_face9],
[scr_textbox, ph_1.x,ph_1.y-300, @"Just do it.", snd_madtalk, global.ratname],
[scr_textbox, ph_1.x,ph_1.y-300, @"Anywhere's better than here.", snd_madtalk, global.ratname],


[scr_changedummyseq, 1, csh_waggle],
[scr_playmusic, snd_radio, 4],
[scr_changeheartface, h_face12],
[scr_textbox, ph_2.x,ph_2.y-300, @"Alright, here it goes...", snd_zap, global.heartname],
[scr_changedummyseq, 1, csh_idle],

[scr_wait, 300],
[cs_playsound, Cmn_MagicSquare],
[css_makeobj, ph_2.x, ph_2.y, obj_makeholes, depth],
[scr_changedummyseq, 0, asq_mr_shocked, asq_mr_shockedext],
[scr_textbox, ph_1.x,ph_1.y-300, @"!!!", snd_madtalk, global.ratname],
[scr_changedummyseq, 0, cs_mr_evil],
[scr_changeratface, mr_face11],
[scr_textbox, ph_1.x,ph_1.y-300, @"ARTY!!", snd_madtalk, global.ratname],

[css_makeobj, ph_2.x+100, ph_2.y+100, obj_makeholes, depth],
[css_makeobj, ph_2.x-100, ph_2.y-100, obj_makeholes, depth],
[css_makeobj, ph_2.x+100, ph_2.y-100, obj_makeholes, depth],
[css_makeobj, ph_2.x-100, ph_2.y+100, obj_makeholes, depth],

[cs_playsound, snd_static],
[css_makeobj, ph_2.x, ph_2.y, obj_controlpixelation, depth],
[css_makeobj, ph_2.x, ph_2.y, obj_shakecamera, depth],
[scr_wait, 240],

[scr_textbox, ph_1.x,ph_1.y-300, @"Say something!!", snd_madtalk, global.ratname],

[scr_textbox, ph_1.x,ph_1.y-300, @"ARTY!!", snd_madtalk, global.ratname],
[cs_fadeblack, 1, 200],
[scr_playmusic, snd_humminglights, 0],
[scr_deleteobj, obj_shakecamera, 0],
[scr_wait, 120],
[scr_playmusic, snd_blank, 0],

[scr_moveobj, obj_cameraman, 0, ph_8.x, ph_8.y, 999],
[scr_moveobj, obj_seqdummy, 0, ph_3.x, ph_3.y, 999],
[scr_changedummyseq, 0, asq_mr_trip2, asq_mr_trip2, 1],
[scr_changedummyseq, 1, csh_idle, csh_idle, -1],

[scr_deleteobj, obj_makeholes, 0],
[scr_deleteobj, obj_makeholes, 0],
[scr_deleteobj, obj_makeholes, 0],
[scr_deleteobj, obj_makeholes, 0],
[scr_deleteobj, obj_makeholes, 0],

[scr_wait, 440],
[cs_fadeblack, 0, 200],

[scr_textbox, ph_3.x,ph_3.y-300, @"Ugh, my head...", snd_madtalk, global.ratname],
[scr_wait, 30],
[scr_changedummyseq, 0, asq_mr_tired],
[scr_wait, 90],
[scr_changedummyseq, 0, asq_mr_angry, asq_mr_angryext],
[scr_textbox, ph_3.x,ph_3.y-300, @"...!", snd_madtalk, global.ratname],
[scr_wait, 30],
[scr_changedummyseq, 0, asq_mr_crossed, asq_mr_crossed, 1],
[scr_textbox, ph_3.x,ph_3.y-300, @"Oh.", snd_madtalk, global.ratname],

[scr_wait, 30],
[scr_changedummyseq, 0, asq_mr_crossed, asq_mr_crossed, -1],
[scr_wait, 30],
[scr_changedummyseq, 0, asq_mr_crossed, asq_mr_crossed, 1],
[scr_wait, 30],
[scr_changedummyseq, 0, asq_mr_crossed, asq_mr_crossed, -1],
[scr_textbox, ph_3.x,ph_3.y-300, @"...Arty?", snd_madtalk, global.ratname],

[scr_wait, 90],
[scr_changeheartface, h_face1],
[scr_moveobj, obj_seqdummy, 1, ph_4.x, ph_4.y, 999],
[scr_textbox, ph_4.x,ph_4.y-300, @"You rang?", snd_zap, global.heartname],

[scr_changedummyseq, 0, asq_mr_cheer, asq_mr_cheer, 1],
[scr_textbox, ph_3.x,ph_3.y-300, @"Arty! So you're still 
with me?", snd_madtalk, global.ratname],

[scr_textbox, ph_4.x,ph_4.y-300, @"Not exactly.", snd_zap, global.heartname],
[scr_changedummyseq, 1, csh_yousee, csh_yousee, 1],
[scr_changedummyseq, 0, asq_mr_crossed],
[scr_textbox, ph_4.x,ph_4.y-300, @"Look.", snd_zap, global.heartname],

[scr_wait, 30],
[scr_makedummy, ph_5.x, ph_5.y, sq_mb_vulnnokey, sq_mb_vulnnokey, 1, 1.5],
[scr_moveobj, obj_cameraman, 0, ph_8.x+200, ph_8.y, 5],
[scr_wait, 240],

[scr_textbox, ph_4.x,ph_4.y-300, @"I'm actually over there,
in that rat.", snd_zap, global.heartname],
[scr_moveobj, obj_cameraman, 0, ph_8.x, ph_8.y, 5],
[scr_wait, 120],
[scr_changedummyseq, 1, csh_idle, csh_idle, -1],

[scr_textbox, ph_4.x,ph_4.y-300, @"When I was implanted in you,
you never woke up.", snd_zap, global.heartname],

[scr_changedummyseq, 0, asq_mr_paws],

[scr_textbox, ph_4.x,ph_4.y-300, @"Then the meteor hit,
and everyone was called away.", snd_zap, global.heartname],
[scr_textbox, ph_4.x,ph_4.y-300, @"Eventually, I ran out of battery
and shut down.", snd_zap, global.heartname],

[scr_changedummyseq, 0, asq_mr_idle],
[scr_textbox, ph_3.x,ph_3.y-300, @"So the virus attacked 
sometime after that?", snd_madtalk, global.ratname],

[scr_changedummyseq, 1, csh_thumbsup],
[scr_textbox, ph_4.x,ph_4.y-300, @"Mmm hmm.", snd_zap, global.heartname],

[scr_changedummyseq, 0, asq_mr_shrug],
[scr_textbox, ph_3.x,ph_3.y-300, @"So when is this?", snd_madtalk, global.ratname],


[scr_changedummyseq, 0, asq_mr_idle],
[scr_changedummyseq, 1, csh_shrug],
[scr_textbox, ph_4.x,ph_4.y-300, @"This is the first rat I was ever put in.", snd_zap, global.heartname],
[scr_textbox, ph_4.x,ph_4.y-300, @"That should give us plenty of time
before the meteor hits.", snd_zap, global.heartname],

[scr_changedummyseq, 1, csh_idle],
[scr_changedummyseq, 0, asq_mr_crossed],
[scr_textbox, ph_3.x,ph_3.y-300, @"What about the virus?", snd_madtalk, global.ratname],

[scr_changedummyseq, 1, csh_waggle],
[scr_textbox, ph_4.x,ph_4.y-300, @"It's just a normal
program now.", snd_zap, global.heartname],
[scr_changedummyseq, 1, csh_thumbsup],
[scr_textbox, ph_4.x,ph_4.y-300, @"I can take it out with a 
virus scan.", snd_zap, global.heartname],

[scr_changedummyseq, 0, asq_mr_crossed, asq_mr_crossed, -1],
[scr_textbox, ph_3.x,ph_3.y-300, @"So all the humans are saved?
How nice.", snd_madtalk, global.ratname],
[scr_changedummyseq, 1, csh_idle],
[scr_changeheartface, h_face1],
[scr_wait, 200],
[scr_changedummyseq, 1, csh_armscrossed],
[scr_changeheartface, h_face10],
[scr_textbox, ph_4.x,ph_4.y-300, @"...The cage is unlocked.", snd_zap, global.heartname],
[scr_textbox, ph_4.x,ph_4.y-300, @"I made sure to pick a time
when no one is here.", snd_zap, global.heartname],
[scr_textbox, ph_4.x,ph_4.y-300, @"It should be easy for you to leave.", snd_zap, global.heartname],

[scr_changedummyseq, 0, cs_mr_humph, cs_mr_humph, 1],
[scr_changeratface, mr_face11],
[scr_textbox, ph_3.x,ph_3.y-300, @"...You're letting me go?", snd_madtalk, global.ratname],
[scr_changeratface, mr_face13],
[scr_changeheartface, h_face1],
[scr_textbox, ph_4.x,ph_4.y-300, @"Just like I promised.
You even got your old heart back.", snd_zap, global.heartname],

[scr_textbox, ph_3.x,ph_3.y-300, @"Won't the doctor be angry?", snd_madtalk, global.ratname],
[scr_changedummyseq, 1, csh_waggle],
[scr_changeheartface, h_face4],
[scr_textbox, ph_4.x,ph_4.y-300, @"Do I detect some concern?", snd_zap, global.heartname],

[scr_changedummyseq, 0, cs_mr_humph, cs_mr_humph, -1],
[scr_changeratface, mr_face13],
[scr_textbox, ph_3.x,ph_3.y-300, @"Just surprised, is all.", snd_madtalk, global.ratname],

[scr_changedummyseq, 1, csh_shrug],
[scr_changeheartface, h_face1],
[scr_textbox, ph_4.x,ph_4.y-300, @"It should be fine.
You're just a rat, after all...", snd_zap, global.heartname],

[scr_changeratface, mr_face5],
[scr_changeheartface, h_face1],
[scr_textbox, ph_3.x,ph_3.y-300, @"...Just a rat, huh?", snd_madtalk, global.ratname],
[scr_textbox, ph_3.x,ph_3.y-300, @"...", snd_madtalk, global.ratname],
[scr_changeratface, mr_face2],
[scr_textbox, ph_3.x,ph_3.y-300, @"Whatever.", snd_madtalk, global.ratname],
[scr_textbox, ph_3.x,ph_3.y-300, @"I'm leaving now.", snd_madtalk, global.ratname],
[scr_wait, 100],
[scr_textbox, ph_3.x,ph_3.y-300, @"...See ya.", snd_madtalk, global.ratname],
[scr_changedummyseq, 1, csh_idle],
[scr_changedummyseq, 0, asq_mr_walk],
[scr_moveobj, obj_seqdummy, 0, ph_1.x-900, ph_1.y, 1],
[scr_wait, 200],
[scr_textbox, ph_4.x,ph_4.y-300, @"...", snd_zap, global.heartname],
[scr_wait, 200],
[cs_fadeblack, 1, 200],

[scr_moveobj, obj_seqdummy, 0, ph_6.x-900, ph_6.y, 999],
[scr_moveobj, obj_cameraman, 0, room_width/2, room_height/2 + room_height, 999],
[scr_changedummyseq, 0, asq_mr_walk, asq_mr_walk, 1],


[cs_fadeblack, 0, 200],

[scr_moveobj, obj_seqdummy, 0, ph_6.x-300, ph_6.y, 2],
[scr_wait, 300],

[scr_changedummyseq, 0, asq_mr_crossed],
[scr_textbox, ph_6.x-300,ph_6.y-300, @"...", snd_madtalk, global.ratname],
[scr_textbox, ph_6.x-300,ph_6.y-300, @"I guess the city was 
just always a dump.", snd_madtalk, global.ratname],

[scr_changedummyseq, 0, asq_mr_walk],
[scr_moveobj, obj_seqdummy, 0, ph_6.x-100, ph_6.y, 1],
[scr_wait, 200],
[scr_changedummyseq, 0, asq_mr_shocked, asq_mr_shockedext, -1],
[cs_playsound, snd_meow],
[scr_wait, 200],
[scr_changedummyseq, 0, cs_mr_humph],
[scr_changeratface, mr_face9],
[scr_textbox, ph_6.x-100,ph_6.y-300, @"Scram, stupid cat!", snd_madtalk, global.ratname],
[scr_textbox, ph_6.x-100,ph_6.y-300, @"I should warn you...", snd_madtalk, global.ratname],
[scr_changedummyseq, 0, cs_mr_dtf],
[scr_textbox, ph_6.x-100,ph_6.y-300, @"You don't have a chance
in hell against me!", snd_madtalk, global.ratname],

[scr_playmusic, snd_static],
[scr_wait, 60],
[cs_playsound, snd_micfeedback],
[scr_spookytext, 100, 100, "Ehh.... Uh....", 200],
[scr_spookytext, 100, 200, "This is a... uhh... ", 100],
[scr_spookytext, 100, 300, "Public safety announcement... ", 100],
//[scr_spookytext, 100, 400, "From " + string(global.quizarray[2]) +  " Labratories... ", 200],
[scr_changeratface, mr_face13],

[scr_spookytext, 100, 100, "We have... discontinued animal testing...", 100],
[scr_spookytext, 100, 200, "There was... a...", 100],
[scr_playmusic, snd_blank],

[scr_spookytext, 100, 300, "Oh, screw it.", 50],
[scr_playmusic, snd_static],
[scr_changedummyseq, 0, cs_mr_crossed, cs_mr_crossed, 1 ],
[scr_spookytext, 100, 100, "IT'S ARTY.", 0],
[scr_spookytext, 100, 200, "I LET ALL THE ANIMALS LOOSE.", 0],
[scr_spookytext, 100, 300, "A CAT RAN OUT AFTER YOU.", 0],
[scr_spookytext, 30, 400, "IT'S GOING FOR YOU, SPECIFICALLY.", 100],

[scr_spookytext, 100, 100, "I DON'T KNOW WHY.", 0],
[scr_spookytext, 100, 200, "ALL I CAN DO IS WARN YOU.", 0],
[scr_spookytext, 100, 300, "I'M SORRY.", 100],

[scr_playmusic, snd_blank],
[scr_wait, 300],
[scr_changedummyseq, 0, asq_mr_crossed, asq_mr_crossed, -1],


[scr_textbox, ph_6.x-100,ph_6.y-300, @"So-", snd_madtalk, global.ratname],

[scr_playmusic, snd_static],
[cs_playsound, snd_micfeedback],
[scr_spookytext, 100, 100, "AND I'M SORRY FOR WHAT I SAID.", 0],
[scr_spookytext, 100, 200, "YOU'RE NOT JUST A RAT.", 0],
[scr_playmusic, snd_blank],

[scr_wait, 400],
[scr_changedummyseq, 0, cs_mr_humph],
[scr_changeratface, mr_face13],
[scr_textbox, ph_6.x-100,ph_6.y-300, @"So I guess you're
the cat, huh?", snd_madtalk, global.ratname],
[scr_textbox, ph_6.x-100,ph_6.y-300, @"Well, you found me.
What do you want?", snd_madtalk, global.ratname],
[cs_playsound, snd_meow],
[scr_wait, 200],
[scr_textbox, ph_6.x-100,ph_6.y-300, @"...", snd_madtalk, global.ratname],
[scr_changedummyseq, 0, cs_mr_humph],
[scr_textbox, ph_6.x-100,ph_6.y-300, @"I'm not sure what I was
expecting...", snd_madtalk, global.ratname],
[scr_changedummyseq, 0, asq_mr_walk, asq_mr_walk, 1],
[scr_moveobj, obj_seqdummy, 0, ph_6.x, ph_6.y, 1],
[scr_wait, 120],
[cs_playsound, snd_meow],
[scr_changeratface, mr_face13],
[scr_changedummyseq, 0, cs_mr_humph, cs_mr_humph, 1 ],
[scr_wait, 120],
[scr_changedummyseq, 0, cs_mr_humph, cs_mr_humph, -1 ],
[scr_textbox, ph_6.x+100,ph_6.y-300, @"...", snd_madtalk, global.ratname],
[scr_changeratface, mr_face2],
[scr_textbox, ph_6.x,ph_6.y-300, @"You're just gonna follow me
around, aren't you?", snd_madtalk, global.ratname],

[scr_wait, 120],
[scr_changedummyseq, 0, cs_mr_evil],
[scr_changeratface, mr_face9],
[scr_textbox, ph_6.x,ph_6.y-300, @"Why me? Why would a cat
follow a rat?", snd_madtalk, global.ratname],
[scr_wait, 240],
[scr_changedummyseq, 0, asq_mr_paws],
[scr_wait, 140],
[scr_changedummyseq, 0, cs_mr_humph],
[scr_changeratface, mr_face1],
[scr_textbox, ph_6.x,ph_6.y-300, @"Well, whatever.
I guess we're both lab rats,
in a way.", snd_madtalk, global.ratname],
[scr_changeratface, mr_face6],
[scr_textbox, ph_6.x,ph_6.y-300, @"I don't know where
I'm going...", snd_madtalk, global.ratname],
[scr_textbox, ph_6.x,ph_6.y-300, @"But if you want to come too,
I guess that'd be alright.", snd_madtalk, global.ratname],
[scr_wait, 140],
[cs_fadeblack, 1, 300],


[scr_endcutscene, E10],
)


