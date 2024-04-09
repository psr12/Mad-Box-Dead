
ds_list_add(que,
[scr_makedummy, 300,650, asq_mr_crossed,asq_mr_crossed , 1, 2],
[scr_makedummy, 1000,650, csh_yousee, csh_yousee, -1, 1.5],
[scr_changevar, obj_seqdummy, 1, "float", true ],
[scr_textbox, 300, 300, @"Looking down from up here...
You can really see...", snd_madtalk, global.ratname],

[scr_moveobj, obj_cameraman, 0, obj_blank.x, obj_blank.y, 9990],
[scr_wait, 200],
[scr_makedummy,obj_blank.x-200, obj_blank.y+500, seq_blank, seq_blank, 1,1],
[scr_textbox, obj_blank.x, obj_blank.y+200, "The city's totally ruined, isn't it?", snd_madtalk, global.ratname],
[scr_moveobj, obj_cameraman, 0, cam_w/2, cam_h/2, 9990],
[scr_textbox, 1000, 300, "I suppose it is!", snd_zap, global.heartname],
[scr_textbox, 300, 300, @"What happened?
Are all the humans dead?", snd_madtalk, global.ratname],
[scr_changedummyseq, 1, csh_hips, csh_hips],
[scr_changeheartface, h_face8],
[scr_textbox, 1000, 300, @"How should I know?!", snd_zap, global.heartname],
[cs_playsound, snd_mouse_chatter],
[scr_changedummyseq, 0, asq_mr_headclutch],

[scr_textbox, 300, 300, @"That sound again!", snd_madtalk, global.ratname],
[scr_wait, 50],
[scr_playmusic, snd_wingflap],
[cs_playsound, snd_eagle],
[scr_moveobj, obj_flair, 0, x, y, 10],
//[scr_changedummyseq, 0 , asq_mr_shocked, asq_mr_shockedext] ,
[scr_wait, 50],
[scr_changeheartface, h_face4],
[scr_textbox, 1000, 300, @"About time you showed up!
Been slacking off, huh?", snd_zap, global.heartname],

[scr_textbox, 300, 300, @"What's going on!?", snd_madtalk, global.ratname],

[scr_changedummyseq, 1, csh_yousee],
[scr_changeheartface, h_face4],
[scr_textbox, 1000, 300, @"This is Beretta.", snd_zap, global.heartname],
[scr_textbox, 1000, 300, @"They capture escaped rats,
such as yourself.", snd_zap, global.heartname],
[scr_textbox, 1000, 300, @"I've been trying to get their 
attention for a while now.", snd_zap, global.heartname],

[scr_textbox, 300, 300, @"What!? Why!?", snd_madtalk, global.ratname],
[scr_textbox, 300, 300, @"I was already going 
back to the lab!", snd_madtalk, global.ratname],


[scr_changedummyseq, 1, csh_hips, csh_hips],
[scr_changeheartface, h_face8],
[scr_textbox, 1000, 300, @"I know you're up to something!", snd_zap, global.heartname],
[scr_textbox, 1000, 300, @"Better to stop you now, than to risk it!", snd_zap, global.heartname],

[scr_changedummyseq, 0, asq_mr_angry, asq_mr_angryext],
[scr_textbox, 300, 300, @"Hey! Featherface!", snd_madtalk, global.ratname],
[scr_textbox, 300, 300, @"I'm already going to the lab!", snd_madtalk, global.ratname],

[scr_changedummyseq, 1, csh_yousee],
[scr_changeheartface, h_face4],
[scr_textbox, 1000, 300, @"Don't bother.", snd_zap, global.heartname],
[scr_textbox, 1000, 300, @"They're lobotomized.", snd_zap, global.heartname],
[scr_changeheartface, h_face1],
[scr_textbox, 1000, 300, @"Um...", snd_zap, global.heartname],
[scr_textbox, 1000, 300, @"That means part of their 
brain is removed.", snd_zap, global.heartname],

[scr_changedummyseq, 0, asq_mr_headclutch],
[scr_textbox, 300, 300, @"You-!", snd_madtalk, global.ratname],
[scr_textbox, 300, 300, @"You freaks make me sick!", snd_madtalk, global.ratname],
[scr_textbox, 300, 300, @"This whole thing is a joke!", snd_madtalk, global.ratname],

[scr_changedummyseq, 1, csh_shrug],
[scr_changeheartface, h_face6],
[scr_textbox, 1000, 300, @"Maybe, but that won't bother
you for much longer!", snd_zap, global.heartname],
[cs_playsound, snd_eagle],
[scr_moveobj, obj_cameraman, 0, 300,550, 5],
[scr_moveobj, obj_flair, 0, 300,550, 5],
[scr_wait, 100],
[cs_camerazoom, 0.1, 0.016],
[scr_wait, 60],

[scr_endcutscene, L14],
)