

contact_wait = 99999;

ds_list_clear(que)
ds_list_add(que,

[cs_fadeblack, 0.8, 100],
[scr_wait,100],
[scr_notedummy, 0, 100, csh_screaming, csh_shrug, 1, 3, 1],
[scr_changeheartface,h_face15],
[scr_notebox,  0, 0, "He totally ignored meeee!", snd_zap, global.heartname],
[scr_changeheartface,h_face1],
[scr_notebox,  0, 0, "Oh! Uh....", snd_zap, global.heartname],
[scr_changedummyseq, 0, ch_shy],
[scr_notebox,  0, 0, @"There should be something here,
shouldn't there?", snd_zap, global.heartname],

[scr_changedummyseq, 0, ch_spin, csh_thumbsup],
[scr_changeheartface,h_face4],
[scr_notebox,  0, 0, "How about a tip?", snd_zap, global.heartname],
[scr_changedummyseq, 0, csh_waggle],
[scr_changeheartface,h_face1],
[scr_notebox,  0, 0, @"If you use 'F' in the 
song editor...", snd_zap, global.heartname],

[scr_notebox,  0, 0, @"You can place special notes that 
skip ahead, like in 'HERE WE ARE'.", snd_zap, global.heartname],

[scr_notebox,  0, 0, @"And pressing 'F' in the room editor...", snd_zap, global.heartname],
[scr_changeheartface,h_face4],
[scr_notebox,  0, 0, @"Will open an extra tab of items!", snd_zap, global.heartname],

[scr_changeheartface,h_face1],
[scr_notebox,  0, 0, @"...Okay?", snd_zap, global.heartname],
[scr_wait, 200],
[scr_changedummyseq, 0, ch_spin, csh_thumbsup],
[scr_notebox,  0, 0, @"Okay! Good.", snd_zap, global.heartname],



[scr_endnotification],

)
