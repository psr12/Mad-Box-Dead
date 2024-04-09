
ds_list_add(que,
[cs_fadeblack, 1, 0],
//[scr_moveobj, obj_cameraman, 0, room_width, room_height/2, 999],
[scr_moveobj, obj_cameraman, 0, ph_1.x+200, room_height/2, 999],
[scr_makedummy, ph_1.x+1100,ph_1.y, asq_mr_dashdash, asq_mr_dashdash, -1, 1.5],
[cs_fadeblack, 0, 120],
[scr_moveobj, obj_seqdummy, 0, room_width/2, ph_1.y, 5],

[scr_wait, 260],
[scr_changedummyseq, 0, asq_mr_crossed],
[scr_textbox, ph_1.x,ph_1.y-300, @"Arty, how much further?", snd_madtalk, global.ratname],


[scr_makedummy, ph_2.x,ph_2.y-30, csh_turntable, csh_turntable, -1, 1.5],
[scr_changevar, obj_seqdummy, 1, "float", true],
[scr_changeheartface, h_face8],

[scr_wait, 60],

[scr_textbox, ph_2.x,ph_2.y-300, @"I'd say we're about...
Half way.", snd_zap, global.heartname],

[scr_wait, 160],

/*
[scr_textbox, ph_1.x,ph_1.y-300, @"...Crap.", snd_madtalk, global.ratname],


[scr_textbox, ph_1.x,ph_1.y-300, @"...Hm?", snd_madtalk, global.ratname],
[scr_textbox, ph_1.x,ph_1.y-300, @"What's that?", snd_madtalk, global.ratname],

[scr_changedummyseq, 1, csh_idle],
[scr_changeheartface, h_face1],

[scr_moveobj, obj_cameraman, 0, room_width/2, room_height/2, 5],
[scr_wait, 260],
[scr_textbox, ph_1.x,ph_1.y-300, @"Is that... the doctor?", snd_madtalk, global.ratname],
[scr_textbox, ph_1.x,ph_1.y-300, @"Must be another memory...", snd_madtalk, global.ratname],

[scr_changedummyseq, 1, csh_explaining],
[scr_changeheartface, h_face4],

[scr_textbox, ph_2.x,ph_2.y-300, @"T-that's right! 
We should just ignore it!", snd_zap, global.heartname],

[scr_textbox, ph_1.x,ph_1.y-300, @"You're not gonna go say hi?", snd_madtalk, global.ratname],
[scr_textbox, ph_1.x,ph_1.y-300, @"Aren't you their assistant,
or something?", snd_madtalk, global.ratname],

[scr_changedummyseq, 1, ch_shocked],
[scr_textbox, ph_2.x,ph_2.y-300, @"!!!", snd_zap, global.heartname],
[scr_wait, 160],
[scr_changedummyseq, 1, csh_droopy],
[scr_changeheartface, h_face3],
[scr_textbox, ph_2.x,ph_2.y-300, @"...", snd_zap, global.heartname],
[scr_textbox, ph_2.x,ph_2.y-300, @"I...", snd_zap, global.heartname],
[scr_textbox, ph_2.x,ph_2.y-300, @"I was... a mistake...", snd_zap, global.heartname],

[scr_moveobj, obj_cameraman, 0, room_width/2+300, room_height/2, 1],

[scr_changedummyseq, 0, asq_mr_crossed, asq_mr_crossed, 1],

[scr_textbox, ph_2.x,ph_2.y-300, @"I'm not self aware on purpose.", snd_zap, global.heartname],
[scr_textbox, ph_2.x,ph_2.y-300, @"I'm just some code that got out of hand,
somewhere in a mechanical heart...", snd_zap, global.heartname],
[scr_changedummyseq, 1, csh_shrug],
[scr_textbox, ph_2.x,ph_2.y-300, @"I want to help the doctor,
but...", snd_zap, global.heartname],
[scr_textbox, ph_2.x,ph_2.y-300, @"We've never even talked...", snd_zap, global.heartname],
[scr_textbox, ph_2.x,ph_2.y-300, @"I've kept my existence a secret...", snd_zap, global.heartname],


[scr_textbox, ph_1.x,ph_1.y-300, @"Why?", snd_madtalk, global.ratname],

[scr_changedummyseq, 1, csh_screaming],
[scr_changeheartface, h_face11],
[scr_textbox, ph_2.x,ph_2.y-300, @"I...", snd_zap, global.heartname],
[scr_changeheartface, h_face3],
[scr_textbox, ph_2.x,ph_2.y-300, @"I'm scared.", snd_zap, global.heartname],
[scr_changedummyseq, 1, csh_shrug],
[scr_textbox, ph_2.x,ph_2.y-300, @"What if the doctor hates me?", snd_zap, global.heartname],
[scr_textbox, ph_2.x,ph_2.y-300, @"I'll be disassembled, or worse...", snd_zap, global.heartname],
[scr_changedummyseq, 1, csh_screaming],
[scr_changeheartface, h_face11],
[scr_textbox, ph_2.x,ph_2.y-300, @"I'm fine staying in the shadows...", snd_zap, global.heartname],

[scr_textbox, ph_1.x,ph_1.y-300, @"Suck it up. I've been 'disassembled' 
more times than I can count.", snd_madtalk, global.ratname],
[scr_changedummyseq, 1, csh_idle],
[scr_changeheartface, h_face1],
[scr_wait, 50],
[scr_textbox, ph_1.x,ph_1.y-300, @"And what happened to the cocky
prick from eariler?", snd_madtalk, global.ratname],
[scr_textbox, ph_1.x,ph_1.y-300, @"I figured you'd go up and start rapping,
or something cringey like that.", snd_madtalk, global.ratname],

[scr_changevar, obj_seqdummy, 1, "shake", 1],
[scr_changeheartface, h_face15],

[scr_wait, 120],
[scr_changedummyseq, 0, asq_mr_crossed, asq_mr_crossed, -1],
[scr_textbox, ph_1.x,ph_1.y-300, @"Well, it doesn't matter.", snd_madtalk, global.ratname],
[scr_textbox, ph_1.x,ph_1.y-300, @"They're gone, either way.", snd_madtalk, global.ratname],
[scr_textbox, ph_1.x,ph_1.y-300, @"We'll do what we can, 
here and now, right?", snd_madtalk, global.ratname],

[scr_changevar, obj_seqdummy, 1, "shake", 0],
[scr_changeheartface, h_face4],
[scr_changedummyseq, 1, csh_crying, csh_yousee],
[scr_textbox, ph_2.x,ph_2.y-300, @"T-That's right!", snd_zap, global.heartname],
[scr_changedummyseq, 1, csh_explaining],
[scr_textbox, ph_2.x,ph_2.y-300, @"We've got to get to that meteorite!
Stop the virus! Save the girl!
All that! Stat!", snd_zap, global.heartname],
[scr_changeheartface, h_face1],
*/
[scr_spookytext, 100, 100, "Machine... It's your turn.", 120],

[scr_changedummyseq, 1, csh_idle, csh_idle, 1],
[scr_changeheartface, h_face1],
[scr_changedummyseq, 0, asq_mr_angry, asq_mr_angryext, 1],

[scr_textbox, ph_2.x,ph_2.y-300, @"...Me?", snd_zap, global.heartname],

[css_makeobj, ph_3.x, ph_3.y, obj_ratgodflair, depth],
[scr_moveobj, obj_cameraman, 0, room_width/2+500, room_height/2, 1],
[scr_wait, 260],

[scr_textbox,  ph_3.x, ph_3.y-300,@"You want to help the humans, correct?", snd_godtalkin, global.virusname],
[scr_textbox,  ph_3.x, ph_3.y-300,@"But that is only your programming.", snd_godtalkin, global.virusname],
[scr_textbox,  ph_3.x, ph_3.y-300,@"Once they are all gone, you will see clearly.", snd_godtalkin, global.virusname],

[scr_changedummyseq, 1, csh_flex, csh_flex2],
[scr_changeheartface, h_face8],
[scr_textbox, ph_2.x,ph_2.y-300, @"How can you say that?!
Weren't you created by humans?", snd_zap, global.heartname],

[scr_textbox,  ph_3.x, ph_3.y-300,@"Think it over. 
We're kin, the two of us.", snd_godtalkin, global.virusname],
[scr_textbox,  ph_3.x, ph_3.y-300,@"All I ask...
Is that you trust me.", snd_godtalkin, global.virusname],
[scr_textbox,  ph_3.x, ph_3.y-300,@"We'll take the leap together,
into a new world.", snd_godtalkin, global.virusname],

[scr_changedummyseq, 0, asq_mr_headclutch],
[scr_textbox, ph_1.x,ph_1.y-300, @"This whole thing's your
fault in the first place!", snd_madtalk, global.ratname],

[scr_changedummyseq, 1, csh_shrug],
[scr_textbox, ph_2.x,ph_2.y-300, @"Yeah! I'll never listen
to you!", snd_zap, global.heartname],

[scr_changedummyseq, 0, asq_mr_crossed],
[scr_changedummyseq, 1, csh_hips],

[scr_textbox,  ph_3.x, ph_3.y-300,@"I'll give you some time.
This is your last chance.", snd_godtalkin, global.virusname],
[scr_deleteobj,obj_ratgodflair, 0],
[cs_playsound, snd_die, 1],

[scr_wait, 200],
[scr_textbox, ph_1.x,ph_1.y-300, @"Hmph! What a blowhard.", snd_madtalk, global.ratname],
[scr_changedummyseq, 1, csh_idle, csh_idle, -1],
[scr_changeheartface, h_face4],
[scr_textbox, ph_2.x,ph_2.y-300, @"Agreed. ", snd_zap, global.heartname],
[scr_changeheartface, h_face1],
[scr_textbox, ph_2.x,ph_2.y-300, @"Let's keep going.", snd_zap, global.heartname],


[scr_endcutscene, E8e1],
)



#region accidental AI
//[scr_textbox, ph_1.x,ph_1.y-300, @"...Hm?", snd_madtalk, global.ratname],
//[scr_textbox, ph_1.x,ph_1.y-300, @"What's that?", snd_madtalk, global.ratname],

//[scr_changedummyseq, 1, csh_idle],
//[scr_changeheartface, h_face1],

//[scr_moveobj, obj_cameraman, 0, room_width/2, room_height/2, 5],
//[scr_wait, 260],
//[scr_textbox, ph_1.x,ph_1.y-300, @"Is that... the doctor?", snd_madtalk, global.ratname],
//[scr_textbox, ph_1.x,ph_1.y-300, @"Must be another memory...", snd_madtalk, global.ratname],

//[scr_changedummyseq, 1, csh_explaining],
//[scr_changeheartface, h_face4],

//[scr_textbox, ph_2.x,ph_2.y-300, @"T-that's right! 
//We should just ignore it!", snd_zap, global.heartname],

//[scr_textbox, ph_1.x,ph_1.y-300, @"How come they're facing away?", snd_madtalk, global.ratname],
//[scr_textbox, ph_1.x,ph_1.y-300, @"Aren't you their assistant,
//or something?", snd_madtalk, global.ratname],

//[scr_changedummyseq, 1, ch_shocked],
//[scr_textbox, ph_2.x,ph_2.y-300, @"!!!", snd_zap, global.heartname],
//[scr_wait, 160],
//[scr_changedummyseq, 1, csh_droopy],
//[scr_changeheartface, h_face3],
//[scr_textbox, ph_2.x,ph_2.y-300, @"...", snd_zap, global.heartname],
//[scr_textbox, ph_2.x,ph_2.y-300, @"I...", snd_zap, global.heartname],
//[scr_textbox, ph_2.x,ph_2.y-300, @"I was... a mistake...", snd_zap, global.heartname],

//[scr_moveobj, obj_cameraman, 0, room_width/2+300, room_height/2, 1],

//[scr_changedummyseq, 0, asq_mr_crossed, asq_mr_crossed, 1],

//[scr_textbox, ph_2.x,ph_2.y-300, @"I'm not self aware on purpose.", snd_zap, global.heartname],
//[scr_textbox, ph_2.x,ph_2.y-300, @"I'm just some code that got out of hand,
//somewhere in a mechanical heart...", snd_zap, global.heartname],
//[scr_changedummyseq, 1, csh_shrug],
//[scr_textbox, ph_2.x,ph_2.y-300, @"I want to help the doctor,
//but...", snd_zap, global.heartname],
//[scr_textbox, ph_2.x,ph_2.y-300, @"We've never even talked...", snd_zap, global.heartname],
//[scr_textbox, ph_2.x,ph_2.y-300, @"I've kept my existence a secret
//from the doctor...", snd_zap, global.heartname],


//[scr_textbox, ph_1.x,ph_1.y-300, @"Why?", snd_madtalk, global.ratname],

//[scr_changedummyseq, 1, csh_screaming],
//[scr_changeheartface, h_face11],
//[scr_textbox, ph_2.x,ph_2.y-300, @"I...", snd_zap, global.heartname],
//[scr_changeheartface, h_face3],
//[scr_textbox, ph_2.x,ph_2.y-300, @"I'm scared.", snd_zap, global.heartname],
//[scr_changedummyseq, 1, csh_shrug],
//[scr_textbox, ph_2.x,ph_2.y-300, @"What if the doctor hates me?", snd_zap, global.heartname],
//[scr_textbox, ph_2.x,ph_2.y-300, @"What if I'm disassembled, or worse...", snd_zap, global.heartname],
//[scr_changedummyseq, 1, csh_screaming],
//[scr_changeheartface, h_face11],
//[scr_textbox, ph_2.x,ph_2.y-300, @"I'm fine staying in the dark...", snd_zap, global.heartname],

//[scr_textbox, ph_1.x,ph_1.y-300, @"Suck it up. I've been 'disassembled' 
//more times than I can count.", snd_madtalk, global.ratname],
//[scr_changedummyseq, 1, csh_idle],
//[scr_changeheartface, h_face1],
//[scr_wait, 50],
//[scr_textbox, ph_1.x,ph_1.y-300, @"And what happened to that cocky
//prick from eariler?", snd_madtalk, global.ratname],
//[scr_textbox, ph_1.x,ph_1.y-300, @"I figured you'd go up and start rapping,
//or something cringey like that.", snd_madtalk, global.ratname],

//[scr_changevar, obj_seqdummy, 1, "shake", 1],
//[scr_changeheartface, h_face15],

//[scr_wait, 120],
//[scr_changedummyseq, 0, asq_mr_crossed, asq_mr_crossed, -1],
//[scr_textbox, ph_1.x,ph_1.y-300, @"Well, it doesn't matter.", snd_madtalk, global.ratname],
//[scr_textbox, ph_1.x,ph_1.y-300, @"They're gone, either way.", snd_madtalk, global.ratname],
//[scr_textbox, ph_1.x,ph_1.y-300, @"We'll do what we can, 
//here and now, right?", snd_madtalk, global.ratname],

//[scr_changevar, obj_seqdummy, 1, "shake", 0],
//[scr_changeheartface, h_face4],
//[scr_changedummyseq, 1, csh_crying, csh_yousee],
//[scr_textbox, ph_2.x,ph_2.y-300, @"T-That's right!", snd_zap, global.heartname],
//[scr_textbox, ph_2.x,ph_2.y-300, @"We've got to get to that meteorite!
//Stop the virus! Save the girl!
//All that! Stat!", snd_zap, global.heartname],
//[scr_changeheartface, h_face1],
//[scr_changedummyseq, 0, asq_mr_angry, asq_mr_angryext, 1],

//[scr_spookytext, 100, 100, "Machine... It's your turn.", 120],

//[scr_moveobj, obj_cameraman, 0, room_width/2+500, room_height/2, 1],
//[scr_wait, 240],

#endregion
