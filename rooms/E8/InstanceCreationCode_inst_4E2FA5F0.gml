
ds_list_clear(que);

ds_list_add(que,

[cs_fadeblack, 0.8, 100],
[scr_wait,100],
[scr_notedummy, 00, 00, csh_yousee, csh_yousee, 1, 2, 1],
[scr_notebox,  00, 0, "These are screws.", snd_zap, global.heartname],
[scr_notebox,  00, 0, "You... uh, twist them into something", snd_zap, global.heartname],
[scr_notebox,  00, 0, "And that holds it in place.", snd_zap, global.heartname],
[scr_endnotification],

)
