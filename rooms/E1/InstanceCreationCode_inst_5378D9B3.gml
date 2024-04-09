
ds_list_clear(que)

ds_list_add(que,

[cs_fadeblack, 0.8, 100],
[scr_wait,100],

[scr_notedummy, 00, 100, asq_mr_crossed, asq_mr_crossed, 1, 2, 0],
[scr_notebox, 0, 00, "Some kind of chemical formula.", snd_madtalk, global.ratname],
[scr_notebox, 0, 00, "It's too complicated to read.", snd_madtalk, global.ratname],
[scr_endnotification],

)
