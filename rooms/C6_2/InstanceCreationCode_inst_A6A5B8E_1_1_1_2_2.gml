ds_list_add(que,
[scr_playmusic, obj_recorder.music],

[scr_makedummy, -400,600, asq_mr_dashdash, asq_mr_dashdash, 1, 2],
[scr_moveobj, obj_seqdummy, 0, 500, 600, 5],
[scr_wait, 200],
[scr_changedummyseq, 0, asq_mr_paws, asq_mr_paws],
[scr_textbox, 500, 300, "My first time outside the lab...", snd_madtalk, global.ratname],
[scr_textbox, 500, 300, "...", snd_madtalk, global.ratname],

[scr_makedummy, 790,550, csh_armscrossed, csh_armscrossed, -1, 2],
[scr_changevar, obj_seqdummy, 1, "float" , true],
[scr_textbox, 900, 350, "Say, rat...", snd_zap, global.heartname],
[scr_textbox, 900, 350, @"You're pretty nuts, ||jumping 
out the window like that.", snd_zap, global.heartname],

[scr_textbox, 900, 350, @"I'll have to start 
calling you...", snd_zap, global.heartname],
[scr_changeheartface, h_face2],
[scr_textbox, 900, 350, "\"" + "The nutso lab rat" + "\"" + ".", snd_zap, global.heartname],
[scr_changeheartface, h_face1],

[scr_changedummyseq, 0, asq_mr_crossed, asq_mr_crossed],
[scr_textbox, 500, 300, @"It's a bit long 
to use as a name...", snd_madtalk, global.ratname],

[scr_changedummyseq, 1, csh_thinking, csh_thinking, -1, 2],
[scr_changeheartface, h_face10],
[scr_textbox, 900, 350, @"Oh,|||| then just,", snd_zap, global.heartname],
[scr_changeheartface, h_face2],
[scr_textbox, 900, 350, "Nut...|||||||| Rat...?", snd_zap, global.heartname],

[scr_changedummyseq, 0, asq_mr_humph, asq_mr_humph],
[scr_textbox, 500, 300, "ABSOLUTELY NOT", snd_madtalk, global.ratname],

[scr_changedummyseq, 1, csh_yousee, csh_yousee, -1, 2],
[scr_changeheartface, h_face4],
[scr_textbox, 900, 350, @"Well how about Jerry?", snd_zap, global.heartname],
[scr_textbox, 900, 350, @"Remy?", snd_zap, global.heartname],
[scr_changedummyseq, 1, csh_shrug],
[scr_changeheartface, h_face1],
[scr_textbox, 900, 350, @"Sonic?", snd_zap, global.heartname],
[scr_textbox, 900, 350, string(global.quizarray[0]) + "?", snd_zap, global.heartname],


[scr_changedummyseq, 0, asq_mr_crossed, asq_mr_crossed, -1, 2],
[scr_textbox, 500, 300, @"...||||||I think 'Nut Rat' might
be the best one...", snd_madtalk, global.ratname],

[scr_changedummyseq, 1, csh_idle, csh_idle, -1],
[scr_changeheartface, h_face1],
[scr_textbox, 900, 350, @"What was that?", snd_zap, global.heartname],

[scr_changedummyseq, 0, asq_mr_crossed, asq_mr_crossed, 1],
[scr_textbox, 500, 300, @"Just thinking to myself...", snd_madtalk, global.ratname],

[scr_changedummyseq, 1, csh_idle, csh_idle, -1, 2],
[scr_changeheartface, h_face5],
[scr_textbox, 900, 350, @"Uh, let's put a pin 
in that for now...", snd_zap, global.heartname],
[scr_changeheartface, h_face1],
[scr_textbox, 900, 350, @"We ended up pretty far away.", snd_zap, global.heartname],
[scr_textbox, 900, 350, @"You should hurry back to the lab.
You're battery powered, now.", snd_zap, global.heartname],

[scr_changedummyseq, 0, asq_mr_paws],
[scr_textbox, 500, 300, "That's true,|||| but...", snd_madtalk, global.ratname],
[scr_changedummyseq, 0, asq_mr_idle],
[scr_textbox, 500, 300, @"I've never been outside my cage before.
I can finally make my dream come true.", snd_madtalk, global.ratname],

[scr_changedummyseq, 1, csh_shrug, csh_shrug, -1, 2],
[scr_changeheartface, h_face9],
[scr_textbox, 900, 350, @"Oh?||||||| And just what sort of 
dream does a rat have?", snd_zap, global.heartname],

[scr_changedummyseq, 0, asq_mr_crossed],
[scr_textbox, 500, 300, @".....", snd_madtalk, global.ratname],
[scr_changedummyseq, 0, asq_mr_cheer],
[scr_textbox, 500, 300, @"Oh...|||| You know!", snd_madtalk, global.ratname],
[scr_textbox, 500, 300, @"I want to play outside!", snd_madtalk, global.ratname],

[scr_wait, 100],
[scr_changeheartface, h_face11],
[scr_wait, 150],
[scr_changeheartface, h_face4],
[scr_textbox, 900, 350, @"Heh!|||| Of course a rat would have
a cute dream like that!", snd_zap, global.heartname],

[cs_playsound, snd_beat, 3],
[scr_changedummyseq, 1, csh_snap1, csh_snap2],
[scr_textbox, 900, 350, @"Alright!||||| Get your fill, 
then head back to the lab.", snd_zap, global.heartname],

[scr_endcutscene, L6],
)






