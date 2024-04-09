
ds_list_clear(que)

ds_list_add(que,

[cs_fadeblack, 0.8, 100],
[scr_wait,100],

[scr_notedummy, 00, 100, asq_mr_crossed, asq_mr_crossed, 1, 2, 0],
[scr_notebox, 0, 00, " 'Cryopods Active: 01' ", snd_madtalk, global.ratname],
[scr_notebox, 0, 00, "After that it's a bunch of numbers.", snd_madtalk, global.ratname],
[scr_endnotification],

)
