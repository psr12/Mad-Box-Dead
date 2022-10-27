var flairx = 650
var flairy = 400


ds_list_add(que,
[scr_makeflair, 400, 200, spr_glover, 2],
[scr_moveobj, obj_flair, 0, flairx, flairy, 1],
[scr_wait, 310],
[scr_makepart,  flairx-30, flairy, global.yelspark, 10],
[cs_playsound, snd_zap],
[scr_wait, 450],
[scr_moveobj, obj_flair, 0, 666, 600, 0.2],
[scr_wait, 50],
[cs_fadeblack, 1, 60],
[scr_wait, 150],
[scr_continuecutscene, C1_2],
)