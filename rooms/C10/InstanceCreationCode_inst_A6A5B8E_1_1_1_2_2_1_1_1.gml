ds_list_add(que,
//[scr_playmusic, obj_recorder.music],

[scr_makedummy, 000,600, asq_mr_dashdash, asq_mr_dashdash, 1, 1.5],
[scr_moveobj, obj_seqdummy, 0, 500, 600, 5],
[scr_wait, 100],
[scr_changedummyseq, 0, asq_mr_idle], 
[scr_makedummy, 900,600, csh_idle, csh_idle, -1, 1.2],
[scr_changevar, obj_seqdummy, 1, "float", true ],
[scr_changeheartface, h_face4],

[scr_textbox, 1000, 400, @"We made it! This is the lab!" , snd_zap, global.heartname],
[scr_changedummyseq, 0, asq_mr_crossed, asq_mr_crossed, 1], 
[scr_textbox, 400, 300, "Are you sure?" , snd_madtalk, global.ratname],
[scr_changedummyseq, 1, csh_yousee, csh_yousee, -1], 
[scr_changeheartface, h_face1],
[scr_textbox, 1000, 400, @"We were on the top floor 
of the lab." , snd_zap, global.heartname],
[scr_textbox, 1000, 400, @"The lower half is 
dedicated to heavy machinery" , snd_zap, global.heartname],
[scr_changedummyseq, 1, csh_armscrossed, csh_armscrossed, -1], 
[scr_textbox, 1000, 400, @"It's in disrepair,
with no one here..." , snd_zap, global.heartname],
[scr_changedummyseq, 0, asq_mr_crossed, asq_mr_crossed, 1], 
[scr_textbox, 400, 300, "Where is everyone, anyway?" , snd_madtalk, global.ratname],
[scr_textbox, 400, 300, "I didn't see anyone outside, either..." , snd_madtalk, global.ratname],

[scr_changedummyseq, 1, csh_shrug, csh_shrug, -1], 
[scr_changeheartface, h_face10],
[scr_textbox, 1000, 400, @"Maybe they're hiding from 
that bird." , snd_zap, global.heartname],

[scr_changedummyseq, 0, asq_mr_humph, asq_mr_humph, 1], 
[scr_textbox, 400, 300, @"A bird wouldn't attack a human.
They're too big.", snd_madtalk, global.ratname],

[scr_changedummyseq, 1, csh_armscrossed, csh_armscrossed, -1], 
[scr_changeheartface, h_face11],
[scr_textbox, 1000, 400, @"Okay, well,
I don't know, then." , snd_zap, global.heartname],
[scr_changeheartface, h_face1],
[scr_textbox, 1000, 400, @"Maybe we'll run into somebody
on the way up." , snd_zap, global.heartname],

[scr_endcutscene, L10],
)