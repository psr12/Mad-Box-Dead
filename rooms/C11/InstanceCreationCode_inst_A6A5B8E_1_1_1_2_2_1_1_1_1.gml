var hx = 900
var rx = 400;
ds_list_add(que,
[scr_playmusic, obj_recorder.music],

[scr_makedummy, rx,600, asq_mr_idle, asq_mr_idle, -1, 1.5],
[scr_makedummy, hx,600, csh_armscrossed, csh_armscrossed, -1, 1.2],
[scr_changevar, obj_seqdummy, 1, "float", true ],


[scr_textbox, hx, 400, @"Say, " + string(global.ratname)+"." , snd_zap, global.heartname],
[scr_changedummyseq, 0, asq_mr_idle, asq_mr_idle, 1],
[scr_textbox, hx, 400, @"I know a lot about medicine,
but not other things..." , snd_zap, global.heartname],
[scr_changeheartface, h_face10],
[scr_textbox, hx, 400, @"I know rats like cheese,
but what is it?" , snd_zap, global.heartname],
[scr_changeheartface, h_face1],
[scr_changedummyseq, 0, asq_mr_crossed],
[scr_textbox, rx, 300, "Um..." , snd_madtalk, global.ratname],
[scr_textbox, rx, 300, @"It's yellow stuff
that you eat." , snd_madtalk, global.ratname],
[scr_changedummyseq, 1, csh_shrug, csh_shrug, -1],
[scr_textbox, hx, 400, @"But what is it made of?" , snd_zap, global.heartname],
[scr_textbox, rx, 300, @".||||||||.|||||||||." , snd_blank, global.ratname],
[scr_changeheartface, h_face4],
[scr_textbox, hx, 400, @"Ah, you don't know.
Don't worry about it." , snd_zap, global.heartname],

[scr_changedummyseq, 0, asq_mr_angry, asq_mr_angryext],
[scr_textbox, rx, 300, @"No! I do know!" , snd_madtalk, global.ratname],
[scr_changedummyseq, 0, asq_mr_crossed],
[scr_textbox, rx, 300, @"..." , snd_blank, global.ratname],
[scr_textbox, rx, 300, @"It's made from cows." , snd_madtalk, global.ratname],
[scr_changedummyseq, 1, csh_idle],
[scr_changeheartface, h_face1],
[scr_textbox, hx, 400, @"Ah, I see..." , snd_zap, global.heartname],
//[scr_wait, 300],
//[scr_changeheartface, h_face2],
//[scr_textbox, hx, 400, @"Pff-" , snd_zap, global.heartname],
//[scr_changedummyseq, 0, asq_mr_humph],
//[scr_textbox, rx, 300, @"You're screwing with me,
//aren't you?" , snd_madtalk, global.ratname],


//[scr_changedummyseq, 1, csh_yousee],
//[scr_changeheartface, h_face4],
//[scr_textbox, hx, 400, @"S-||||so, do you have any 
//questions|||| for me?" , snd_zap, global.heartname],

//[scr_changedummyseq, 0, asq_mr_paws],
//[scr_textbox, rx, 300, @"..." , snd_blank, global.ratname],
//[scr_changedummyseq, 0, asq_mr_idle],
//[scr_textbox, rx, 300, @"no" , snd_madtalk, global.ratname],


[scr_endcutscene, L11],
)

