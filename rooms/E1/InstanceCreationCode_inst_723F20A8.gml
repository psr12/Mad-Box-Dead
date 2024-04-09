
ds_list_clear(que)

ds_list_add(que,

[cs_fadeblack, 0.8, 100],
[scr_wait,100],

[scr_notedummy, 00, 100, asq_mr_crossed, asq_mr_crossed, 1, 2, 0],
[scr_notebox, 0, 00, "A thank you note.", snd_madtalk, global.ratname],
[scr_notebox, 0, 00, "...They're boxes of chocolate.", snd_madtalk, global.ratname],
[scr_endnotification],

)
