
var pcname = environment_get_variable("USERNAME")

ds_list_add(que, //on table
[scr_makedummy, ph_1.x, ph_1.y, asq_mr_tired, asq_mr_tired, 1, 2],
[scr_makedummy, ph_2.x, ph_2.y, csh_idle, csh_idle, 1, 1],
[scr_changevar, obj_seqdummy, 1, "float", 1],
[scr_changeheartface, h_face5],
[scr_wait, 200],
[scr_changedummyseq, 0, asq_mr_trip1, asq_mr_trip2],
[scr_changeheartface, h_face4],
[cs_playsound, snd_enemydeath2],
[scr_makeflair, ph_1.x, ph_1.y, spr_fullclaw, 3],
[scr_wait, 100],

[css_makeobj, 0, 0, obj_glitchy, depth],
[scr_textbox, ph_2.x, ph_2.y-200, @"I... I got him!", snd_zap, global.heartname],
[scr_changedummyseq, 1, csh_idle, csh_idle, 1, 1],
[scr_textbox, ph_2.x, ph_2.y-200, @"Doctor! I got him!", snd_zap, global.heartname],
[scr_moveobj, obj_cameraman, 0, ph_3.x, ph_3.y, 999],
[scr_textbox, ph_3.x, ph_3.y, @"You can come out now!", snd_zap, global.heartname],
[scr_textbox, ph_3.x, ph_3.y, @"Doctor!", snd_zap, global.heartname],
[scr_changeheartface, h_face1],
[scr_moveobj, obj_cameraman, 0, cam_w/2, cam_h/2, 999],
[scr_wait, 100],
[scr_textbox,  ph_2.x, ph_2.y-200, @"...Doctor!", snd_zap, global.heartname],
[scr_wait, 200],
[scr_changeheartface, h_face3],
[scr_textbox, ph_2.x, ph_2.y-200,"|||||... " + pcname + "...", snd_zap, global.heartname],

[cs_playsound, snd_die],//arty dies
[scr_deleteobj,obj_seqdummy, 1],
[scr_deleteobj,obj_flair, 0],
[scr_makeflair, ph_2.x, ph_2.y, spr_static, 1],
[scr_wait, 300],

[scr_changedummyseq, 0, asq_mr_tired], //mr gets up, fade to black
[scr_wait, 200],
[cs_fadeblack, 1, 100],
[scr_wait, 100],
[scr_changevar, obj_makerain, 0, "on", false],
[scr_moveobj, obj_cameraman, 0, ph_3.x, ph_3.y, 999],
[scr_makedummy, ph_4.x, ph_4.y, asq_mr_idle,asq_mr_idle , 1, 1],
[scr_wait, 200],
[cs_fadeblack, 0, 100],

[scr_wait, 200], //mr looks at door
[scr_changedummyseq, 1, asq_mr_paws],
[scr_wait, 260],
[scr_changedummyseq, 1, asq_mr_idle],
[scr_wait, 220],
[scr_changedummyseq, 1, asq_mr_walk, asq_mr_walk, -1],
[scr_moveobj, obj_seqdummy, 1, ph_4.x-999, ph_4.y, 1],

[cs_fadeblack, 1, 200], // fade
[scr_wait, 100],
[scr_moveobj, obj_cameraman, 0, ph_5.x, ph_5.y, 999],
[scr_moveobj, obj_seqdummy, 1, ph_6.x, ph_6.y, 999],
[scr_changedummyseq, 1, asq_mr_paws, asq_mr_paws, -1, 2],
[scr_wait, 100],
[cs_fadeblack, 0, 100],

 //mr is outside
[scr_textbox, ph_6.x, ph_6.y-400, "...", snd_madtalk, global.ratname],
[scr_changedummyseq, 1, asq_mr_tired],
[scr_textbox, ph_6.x, ph_6.y-400, @"It's all over.", snd_madtalk, global.ratname],
[scr_textbox, ph_6.x, ph_6.y-400, @"The doctor's already gone.
Maybe everyone else, too.", snd_madtalk, global.ratname],
[scr_changedummyseq, 1, asq_mr_paws],
[scr_textbox, ph_6.x, ph_6.y-400, @"That's what I wanted, right?", snd_madtalk, global.ratname],
[scr_wait, 300],
[scr_changedummyseq, 1, asq_mr_tired],
[scr_textbox, ph_6.x, ph_6.y-400, @"I should look around.
Just in case.", snd_madtalk, global.ratname],


[scr_endcutscene, E1],
)

/*
[scr_textbox, xstart,ystart, @"Arty catches Mad Rat in mechanical pincers.
'Doctor! I've got him! You can come out now! We- '
Arty and all the equipment shuts down.
Mad Rat jumps down, and walks over to the locked door. 
He looks up at it for a bit, and leaves.
",
snd_madtalk, "..."],
