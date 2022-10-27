
ds_list_clear(que);

ds_list_add(que,

[cs_fadeblack, 0.8, 100],
[scr_wait,100],
[scr_notedummy, -100, 00, csh_hips, csh_hips, 1, 2, 1],
[scr_notedummy, 200, 0, sq_mb_idle, sq_mb_idle, -1, 2, 0],
[scr_notebox,  00, 0, "Geez, how did you get here?", snd_zap, global.heartname],
[scr_wait, 200],
[scr_notebox,  00, 0, "Yeah, I expected as much.", snd_zap, global.heartname],

[scr_endnotification],

)