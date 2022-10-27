var hx = 900
var rx = 400;

ds_list_add(que,
[scr_playmusic, obj_recorder.music],

[scr_makedummy, rx,600, asq_mr_humph, asq_mr_humph, 1, 1.5],
[scr_makedummy, hx,600, csh_idle, csh_idle, 1, 1.2],
[scr_changevar, obj_seqdummy, 1, "float", true ],

[scr_textbox, hx, 400, @"There's some mecha-rats here." , snd_zap, global.heartname],
[scr_changeheartface, h_face4],
[scr_textbox, hx, 400, @"I guess you could call this a 
'mixed-field'. Ha ha ha!" , snd_zap, global.heartname],


[scr_textbox, rx, 300, "..." , snd_madtalk, global.ratname],
[scr_textbox, rx, 300, string(global.heartname) + "." , snd_madtalk, global.ratname],
[scr_changedummyseq, 1, csh_yousee, csh_yousee, -1], 
[scr_changeheartface, h_face1],
[scr_textbox, hx, 400, @"Yes?" , snd_zap, global.heartname],
[scr_changedummyseq, 0, asq_mr_crossed, asq_mr_crossed], 
[scr_textbox, rx, 300, "Where are the humans?" , snd_madtalk, global.ratname],
[scr_changeheartface, h_face1],
[scr_textbox, hx, 400, @"What do you mean, " + string(global.ratname)+"?" , snd_zap, global.heartname],
[scr_textbox, rx, 300, "What was the last time you saw a human?" , snd_madtalk, global.ratname],
[scr_textbox, hx, 400, @"The Doctor, obviously!" , snd_zap, global.heartname],
[scr_textbox, rx, 300, "Aside from that?" , snd_madtalk, global.ratname],
[scr_changedummyseq, 1, csh_armscrossed, csh_armscrossed, -1], 
[scr_changeheartface, h_face10],
[scr_textbox, hx, 400, @"Well, there were some other 
scientists in the building." , snd_zap, global.heartname],
[scr_textbox, rx, 300, "Were?" , snd_madtalk, global.ratname],
[scr_changeheartface, h_face1],
[scr_textbox, hx, 400, @"I don't see anyone here, do you?" , snd_zap, global.heartname],
[scr_textbox, rx, 300, "How long ago was that?" , snd_madtalk, global.ratname],
[scr_changeheartface, h_face4],
[scr_textbox, hx, 400, @"You sure are grilling me,
"+string(global.ratname)+"...." , snd_zap, global.heartname],
[scr_changeheartface, h_face1],
[scr_textbox, hx, 400, @"Time passes instantly when I'm offline." , snd_zap, global.heartname],
[scr_changeheartface, h_face11],
[scr_textbox, hx, 400, @"So I don't know." , snd_zap, global.heartname],
[scr_textbox, rx, 300, "I've been thinking about something, but... " , snd_madtalk, global.ratname],
[scr_textbox, rx, 300, "We'll know for sure when we get to the top." , snd_madtalk, global.ratname],





[scr_endcutscene, L12],
)