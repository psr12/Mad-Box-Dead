

contact_wait = 99999;

ds_list_clear(que)
ds_list_add(que,

[cs_fadeblack, 0.8, 100],
[scr_wait,100],
[scr_notedummy, 0, 200, csh_idle, csh_idle, 1, 6, 1],
[scr_changeheartface,h_face6],
[scr_notebox,  0, 0, "I'M NOT DEAD", snd_zap, global.heartname],
[scr_notebox,  0, 0, "But...", snd_zap, global.heartname],
[scr_deleteobj, obj_seqdummy, 0],
[scr_notedummy, 0, 0, csh_shrug, csh_shrug, 1, 3, 1],
[scr_notebox,  0, 0, "I think I'm done for now.", snd_zap, global.heartname],
[scr_changedummyseq, 0, csh_idle],
[scr_changeheartface,h_face3],
[scr_notebox,  0, 0, @"It's clear that the doctor doesn't want
anything to do with me, now...", snd_zap, global.heartname],
[scr_notebox,  0, 0, @"So...", snd_zap, global.heartname],

[scr_changedummyseq, 0, csh_shrug],
[scr_changeheartface,h_face4],
[scr_notebox,  0, 0, @"This is the end of my story!", snd_zap, global.heartname],
[scr_changeheartface,h_face1],
[scr_notebox,  0, 0, "Or rather-", snd_zap, global.heartname],
[scr_changedummyseq, 0, csh_shrug],
[scr_changeheartface,h_face4],
[scr_notebox,  0, 0, @"It was a pleasure,
barging in on your story.", snd_zap, global.heartname],
[scr_changeheartface,h_face1],
[scr_notebox,  0, 0, @"So long, " + string(global.ratname) + ".", snd_zap, global.heartname],
[scr_endnotification],

)
