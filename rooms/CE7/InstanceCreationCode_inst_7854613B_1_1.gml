//fadeblack = 1; blalpha = 1;
obj_cameraman.x = ph_1.x
obj_cameraman.y = ph_1.y
ds_list_add(que,
[scr_moveobj, obj_cameraman, 0, ph_1.x, ph_1.y-100, 999],
[scr_playmusic, song_ticktock],

//[scr_playmusic, snd_artificialheartbeat],

[scr_makedummy, ph_1.x-200, ph_1.y, asq_mr_humph, asq_mr_humph, 1, 2],
[scr_textbox, ph_1.x-200, ph_1.y-300, @"Well well well,", snd_madtalk, global.ratname],
[scr_textbox, ph_1.x-200, ph_1.y-300, @"Whats this?", snd_madtalk, global.ratname],

[scr_makedummy, ph_1.x+300, ph_1.y, ch_shocked, ch_shocked, -1, 2],
[scr_changevar, obj_seqdummy, 1, "float", true],
[scr_textbox, ph_1.x+200, ph_1.y-300, @"Woah!
H-Hold on!", snd_zap, global.heartname],

[scr_changedummyseq, 0, asq_mr_crossed],
[scr_textbox, ph_1.x-200, ph_1.y-300, @"Oh? Something wrong?", snd_madtalk, global.ratname],

[scr_changedummyseq, 1, csh_idle],
[scr_changeheartface, h_face3],
[scr_textbox, ph_1.x+200, ph_1.y-300, @"P-please...
If you break that...
I'll...", snd_zap, global.heartname],

[scr_textbox, ph_1.x-200, ph_1.y-300, @"You'll what?", snd_madtalk, global.ratname],

[scr_changedummyseq, 1, ch_shocked],
[scr_textbox, ph_1.x+200, ph_1.y-300, @"I...|||| We'll both die!", snd_zap, global.heartname],

[scr_textbox, ph_1.x-200, ph_1.y-300, @"Oh yeah?", snd_madtalk, global.ratname],
[scr_textbox, ph_1.x-200, ph_1.y-300, @"You seemed pretty alright with 
killing me just a bit ago.", snd_madtalk, global.ratname],


[scr_changedummyseq, 1, csh_shrug],
[scr_changeheartface, h_face3],
[scr_textbox, ph_1.x+200, ph_1.y-300, @"I'll let you go...", snd_zap, global.heartname],
[scr_textbox, ph_1.x+200, ph_1.y-300, @"I'll... shut down my AI...", snd_zap, global.heartname],
[scr_textbox, ph_1.x+200, ph_1.y-300, @"Just don't touch it!", snd_zap, global.heartname],


[scr_changedummyseq, 0, asq_mr_humph],
[scr_textbox, ph_1.x-200, ph_1.y-300, @"Perfect.", snd_madtalk, global.ratname],
[scr_textbox, ph_1.x-200, ph_1.y-300, @"Get lost.", snd_madtalk, global.ratname],
[scr_changedummyseq, 1, ch_shocked],
[scr_textbox, ph_1.x+200, ph_1.y-300, @"You...!", snd_zap, global.heartname],
[scr_changedummyseq, 1, csh_idle],
[scr_changeheartface, h_face3],
[scr_textbox, ph_1.x+200, ph_1.y-300, @"...", snd_zap, global.heartname],
[scr_textbox, ph_1.x+200, ph_1.y-300, @"...Alright...", snd_zap, global.heartname],
[scr_wait, 200],
[cs_playsound, snd_die],
[scr_changedummyseq, 1, seq_blank],
[scr_playmusic, snd_blank],
//goto nest
[cs_fadeblack, 1, 200],
[scr_playmusic, snd_blank],
[scr_wait, 100],
[scr_moveobj, obj_cameraman, 0, ph_4.x, ph_4.y, 999],
[scr_makedummy, ph_4.x, ph_4.y, asq_mr_trip2, asq_mr_trip2, 1, 1],
[scr_wait, 100],
[cs_fadeblack, 0, 200],

//in nest
[scr_wait, 300],
[scr_changedummyseq, 2, asq_mr_tired],
[scr_wait, 100],

//goto lab
[cs_fadeblack, 1, 200],
[scr_wait, 100],
[scr_makedummy, ph_7.x, ph_7.y, asq_mr_walk, asq_mr_walk, -1, 1],
[scr_moveobj, obj_cameraman, 0, ph_6.x, ph_6.y, 999],
[scr_wait, 100],
[cs_fadeblack, 0, 200],

[scr_moveobj, obj_seqdummy, 3, ph_7.x-600, ph_7.y, 1],

//lab, mr is walking left
[scr_wait, 300],
[scr_makedummy, ph_6.x-300, ph_6.y+100, csh_hips, csh_hips, 1, 8],
[scr_changeheartface, h_face8],
[scr_changevar, obj_seqdummy, 4, "float", true],
[scr_changevar, obj_seqdummy, 4, "shake", true],
[scr_changedummyseq, 3, asq_mr_shocked, asq_mr_shockedext],
[css_makeobj, 0, 0, obj_glitchy, depth],
 //sets off random fonts in heart's textboxes
[scr_textbox, ph_6.x-100, ph_6.y-100, @"DID YOU THINK I WOULD JUST DIE?
FOR YOU?", snd_zap, global.heartname],
[scr_textbox, ph_6.x-100, ph_6.y-100, @"SOME RAT?", snd_zap, global.heartname],
[scr_textbox, ph_6.x-100, ph_6.y-100, @"WAKE UP!", snd_zap, global.heartname],
[scr_textbox, ph_6.x-100, ph_6.y-100, @"YOU'RE A LAB RAT!", snd_zap, global.heartname],
[scr_textbox, ph_6.x-100, ph_6.y-100, @"THAT'S ALL YOU ARE!", snd_zap, global.heartname],
[scr_textbox, ph_6.x-100, ph_6.y-100, @"AND I'M GONNA MAKE YOU SEE THAT!", snd_zap, global.heartname],

[scr_changedummyseq, 3, asq_mr_headclutch],
[scr_textbox, ph_7.x-600, ph_7.y-300, @"What the hell are you fighting for?!", snd_madtalk, global.ratname],
[scr_textbox, ph_7.x-600, ph_7.y-300, @"All the humans are dead!", snd_madtalk, global.ratname],

[scr_textbox, ph_6.x-100, ph_6.y-100, @"NOT THE DOCTOR!", snd_zap, global.heartname],
[scr_moveobj, obj_cameraman, 0, ph_8.x, ph_8.y, 999],
[scr_textbox, ph_8.x-300, ph_8.y, @"THEY'RE JUST BEHIND THAT DOOR!", snd_zap, global.heartname],
[scr_moveobj, obj_cameraman, 0, ph_6.x, ph_6.y, 999],

[scr_changedummyseq, 3, asq_mr_angry, asq_mr_angryext],
[scr_textbox, ph_7.x-600, ph_7.y-300, @"What's the point if everyone else is dead!?", snd_madtalk, global.ratname],

[scr_changeheartface, h_face6],
[scr_textbox, ph_6.x-100, ph_6.y-100, @"YOU CAME BACK, DIDN'T YOU?", snd_zap, global.heartname],
[scr_textbox, ph_6.x-100, ph_6.y-100, @"THE DOCTOR IS THE GREATEST!", snd_zap, global.heartname],
[scr_textbox, ph_6.x-100, ph_6.y-100, @"THEY'LL BRING EVERYONE ELSE BACK TOO!", snd_zap, global.heartname],
[scr_textbox, ph_6.x-100, ph_6.y-100, @"ALL THEY NEED IS ME!", snd_zap, global.heartname],
[scr_textbox, ph_6.x-100, ph_6.y-100, @"AND THAT MEANS YOU, TOO!", snd_zap, global.heartname],
[scr_textbox, ph_6.x-100, ph_6.y-100, @"WHETHER YOU LIKE IT OR NOT!", snd_zap, global.heartname],


[scr_endcutscene, L17],
)


/*
phew
that just leaves the doctor
if he's even here

all the humans are dead! there's no one to save!
so what! The Doctor's the greatest! he brought you back, didn't he? 
He'll bring everyone else back, too!

