ds_list_add(que,


[scr_makedummy, 200,550, asq_mr_dashdash, asq_mr_dashdash, 1, 2],
[scr_moveobj, obj_seqdummy, 0, 900, 550, 7],
[scr_wait, 120],
[scr_changedummyseq, 0, asq_mr_tired, asq_mr_tired, 1, 2],
[scr_wait, 100],
[scr_makedummy, 400,550, csh_hips, csh_hips, 1, 2],
[scr_changeheartface, h_face8],
[scr_changevar, obj_seqdummy, 1, "float" , true],
[scr_textbox, 500, 250, @"First you chase me, 
now you're running?
You sure are fickle.", snd_zap, "???"], 
[scr_changedummyseq, 0, asq_mr_tired, asq_mr_tired, -1, 2],
[scr_textbox, 800, 250, @"What do you want
from me?", snd_madtalk, global.ratname], 
[scr_changeheartface, h_face1],
[scr_textbox, 500, 250, @"I'm just here to help.", snd_zap, "???"], 

[scr_changedummyseq, 1, csh_yousee, csh_yousee, 1, 2],
[scr_changeheartface, h_face4],
[scr_textbox, 500, 250, @"You didn't like the music, right?
How about rap?", snd_zap, "???"], 

[scr_playmusic, song_madratheart],
[scr_changedummyseq, 1, csh_turntable, csh_turntable, 1, 2],
[scr_changeheartface, h_face8],
[scr_wait, 180],
[scr_textbox, 400, 250, @"Ay", snd_zap, "???"], 
		   
		   
[scr_textbox, 470, 250, @"I sit on your diaphragm,|||||||||
What you see's a hologram,|||||||||
A-||R-||T|| yeah you know me,||||||
AI mind is on the scene. |||Ay.
", snd_zap, "???"], 

[scr_textbox, 450, 250, @"You were born with a heart condition.|||||||||
Do my work, just a single mission.|||||||||
Keep the beat, to move your feet.|||||||||
Owe my life to a rad physician.||| Ay.", 
snd_zap, "???"], 


[scr_playmusic, snd_blank],
[scr_changedummyseq, 1, csh_yousee, csh_yousee, 1, 2],
[scr_changeheartface, h_face4],
[scr_textbox, 450, 250, @"So how's that?
Is that any better?", snd_zap, "???"], 

[scr_changedummyseq, 0, asq_mr_crossed, asq_mr_crossed, -1, 2],
[scr_changedummyseq, 1,csh_idle,csh_idle, 1, 2],
[scr_changeheartface, h_face1],

[scr_textbox, 800, 250, @"|||||.|||||.|||||.|||||.|||||.", snd_madtalk, global.ratname], 
[scr_textbox, 800, 250, @"Ya know...", snd_madtalk, global.ratname], 
[scr_textbox, 800, 250, @"It's pretty hard to stay
scared after that.", snd_madtalk, global.ratname], 

[scr_changedummyseq, 1,csh_hips,csh_hips, 1, 2],
[scr_changeheartface, h_face8],
[scr_textbox, 450, 250, @"Good!|||||| Maybe we can 
actually talk, now!", snd_zap, global.heartname], 

//[cs_fadeblack,1, 120],
//[scr_changedummyseq, 1,csh_idle,csh_idle, 1, 2],
//[scr_changeheartface, h_face4],
//[scr_wait, 240],
//[cs_fadeblack,0, 120],

//[scr_textbox, 800, 250, @"|||||||||| ...So you're my new heart?", snd_madtalk, global.ratname], 

//[scr_changedummyseq, 1, csh_yousee, csh_yousee, 1, 2],
//[scr_changeheartface, h_face1],
//[scr_textbox, 450, 250, @"That's the short version, yes.
//", snd_zap, global.heartname], 

//[scr_textbox, 800, 250, @"What was wrong with 
//my old heart?", snd_madtalk, global.ratname], 
//[scr_changeheartface, h_face1],

//[scr_changedummyseq, 1,csh_idle, csh_idle, 1, 2],
//[scr_textbox, 450, 250, @"Hm? Well it's kind of 
//complicated...", snd_zap, global.heartname], 

//[scr_changedummyseq, 0, asq_mr_humph],
//[scr_textbox, 800, 250, @"Give it back!", snd_madtalk, global.ratname], 

//[scr_changedummyseq, 1, ch_shocked],
//[scr_textbox, 450, 250, @"You want your old heart back?!", snd_zap, global.heartname], 
//[scr_changedummyseq, 1, csh_shrug],
//[scr_changeheartface, h_face8],
//[scr_textbox, 450, 250, @"That's-!", snd_zap, global.heartname], 
//[scr_changeheartface, h_face1],
//[scr_textbox, 450, 250, @"...", snd_zap, global.heartname], 
//[scr_changedummyseq, 1, csh_thinking],
//[scr_changeheartface, h_face10],
//[scr_textbox, 450, 250, @"Hmmm...", snd_zap, global.heartname], 
//[scr_changedummyseq, 1, csh_explaining],
//[scr_changeheartface, h_face4],
//[scr_textbox, 450, 250, @"How about this?", snd_zap, global.heartname], 
//[scr_changeheartface, h_face2],
//[scr_textbox, 450, 250, @"If you help with testing,
//I'll get your old heart back.", snd_zap, global.heartname], 

//[scr_changedummyseq, 0, asq_mr_crossed],
//[scr_textbox, 800, 250, @"Really?", snd_madtalk, global.ratname], 

//[scr_changedummyseq, 1, ch_spin, csh_thumbsup],
//[scr_changeheartface, h_face4],
//[scr_textbox, 450, 250, @"Yup! You just need to run around!", snd_zap, global.heartname], 
//[scr_textbox, 450, 250, @"You can even run wherever
//you want!", snd_zap, global.heartname], 
//[scr_changeheartface, h_face2],
//[scr_textbox, 450, 250, @"How does that sound?", snd_zap, global.heartname], 

//[scr_changedummyseq, 0, cs_mr_crossed],
//[scr_changeratface, mr_face5],
//[scr_textbox, 800, 250, @"...", snd_madtalk, global.ratname], 
//[scr_changeratface, mr_face13],
//[scr_textbox, 800, 250, @"It's not enough.", snd_madtalk, global.ratname], 

//[scr_changeheartface, h_face1],
//[scr_textbox, 450, 250, @"Huh? Like what?", snd_zap, global.heartname], 

//[scr_textbox, 800, 250, @"I'll help, but I want my old 
//heart back, and I want to be 
//let out of here.", snd_madtalk, global.ratname], 

//[scr_changedummyseq, 1, csh_idle],
//[scr_changeheartface, h_face14],
//[scr_textbox, 450, 250, @"You drive a hard bargain,
//for a rat...", snd_zap, global.heartname], 

//[scr_changedummyseq, 1, ch_spin, csh_thumbsup],
//[scr_changeheartface, h_face4],
//[scr_textbox, 450, 250, @"Alright then! 
//This will be your last experiment!", snd_zap, global.heartname], 

//[scr_changedummyseq, 0, cs_mr_crossed],
//[scr_changeratface, mr_face6],
//[scr_textbox, 800, 250, @"So it's settled? Great!", snd_madtalk, global.ratname],
//[scr_changedummyseq, 0, cs_mr_humph],
//[scr_changeratface, mr_face1],
//[scr_textbox, 800, 250, @"For the next song, I was thinking
//something more upbeat?", snd_madtalk, global.ratname],


//[scr_changeheartface, h_face4],
//[scr_changedummyseq, 1, ch_fistpump,ch_fistpump, 1, 2],
//[scr_textbox, 450, 250, @"Okay! Sounds good to me!", snd_zap, global.heartname], 

[cs_fadeblack,1, 120],
[scr_changedummyseq, 1,csh_idle,csh_idle, 1, 2],
[scr_changeheartface, h_face4],
[scr_wait, 240],
[cs_fadeblack,0, 120],

[scr_textbox, 800, 250, @"|||||||||| ...So the doctor put you inside me 
to fix my heart?", snd_madtalk, global.ratname], 

[scr_changedummyseq, 1, csh_yousee, csh_yousee, 1, 2],
[scr_changeheartface, h_face1],
[scr_textbox, 450, 250, @"That's the short version, yes.
", snd_zap, global.heartname], 

[scr_textbox, 800, 250, @"So what happens now?", snd_madtalk, global.ratname], 
[scr_changeheartface, h_face1],

[scr_changedummyseq, 1,csh_idle,csh_idle, 1, 2],
[scr_textbox, 450, 250, @"I still need to test my limits,
so you get to run around some more.
", snd_zap, global.heartname], 

[scr_changedummyseq, 0, asq_mr_shrug, asq_mr_shrugext, -1, 2],
[scr_textbox, 800, 250, @"Just run? Anywhere?", snd_madtalk, global.ratname], 

[scr_textbox, 450, 250, @"You've got the whole lab at
your disposal.", snd_zap, global.heartname], 
[scr_changeheartface, h_face4],
[scr_changedummyseq, 1, ch_fistpump,ch_fistpump, 1, 2],
[scr_textbox, 450, 250, @"Just get me pumping hard!", snd_zap, global.heartname], 
[scr_changedummyseq, 1, csh_idle, csh_idle, 1, 2],
[scr_changeheartface, h_face1],

[scr_changedummyseq, 0, asq_mr_paws, asq_mr_paws, -1, 2],
[scr_textbox, 800, 250, @"...", snd_madtalk, global.ratname], 
[scr_textbox, 800, 250, @"This might be my chance...", snd_madtalk, global.ratname], 
[scr_textbox, 800, 250, @"...Alright. ", snd_madtalk, global.ratname],
[scr_textbox, 800, 250, @"How about some...", snd_madtalk, global.ratname],
[scr_changedummyseq, 0, asq_mr_cheer, asq_mr_cheer, -1, 2],
[scr_textbox, 800, 250, @"Rock?", snd_madtalk, global.ratname],

[scr_changeheartface, h_face4],
[scr_changedummyseq, 1, ch_fistpump,ch_fistpump, 1, 2],
[scr_textbox, 450, 250, @"To celebrate your change of heart?", snd_zap, global.heartname], 
[scr_textbox, 450, 250, @"Sounds good to me!", snd_zap, global.heartname], 
[scr_endcutscene, L3],
)