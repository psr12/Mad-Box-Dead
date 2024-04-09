// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_makedummy(xx,yy,showing, howsthat, facing, scale){

	var baby = instance_create(xx,yy, obj_seqdummy)
	
	baby.showing = showing //one play, goes to howsthat or stops
	baby.howsthat = howsthat //looping seq
	baby.wasfacing = facing // facing left (-1) or right (1)
	baby.scale = scale //size of seq
		if variable_instance_exists(id, "onscene") {onscene++;}
	return baby
}

function scr_changeheartface(facesprite){
		with obj_cutscenehandler heartface = facesprite;
		with obj_notification heartface = facesprite;
		if instance_exists(obj_heartface) {obj_heartface.sprite_index = facesprite}
		if variable_instance_exists(id, "onscene") {onscene++;}
}
//function scr_changeheartbody(bodysprite){
//		with obj_cutscenehandler heartbody = bodysprite;
//		if instance_exists(obj_heartbody) obj_heartbody.sprite_index = bodysprite
//		if variable_instance_exists(id, "onscene") {onscene++;}
//}
function scr_changeratface(facesprite){
	with obj_cutscenehandler ratface = facesprite
	with obj_notification ratface = facesprite
	if instance_exists(obj_ratface) {obj_ratface.sprite_index = facesprite}
	if variable_instance_exists(id, "onscene") {onscene++;}
}

function scr_shakecamera(ammount){
	with obj_cameraman {shake = ammount}
		if variable_instance_exists(id, "onscene") {onscene++;}

}



function scr_makeflair(xx,yy,sprite,scale){

	var baby = instance_create_depth(xx,yy, depth-100, obj_flair)

	with baby {
		image_scale(scale);
		sprite_index = sprite;
	}
		if variable_instance_exists(id, "onscene") {onscene++;}

}
function scr_makeflairend(xx,yy,sprite,scale){

	var baby = instance_create_depth(xx,yy, depth-100, obj_flairend)

	with baby {
		image_scale(scale);
		sprite_index = sprite;
	}
		if variable_instance_exists(id, "onscene") {onscene++;}

}
function scr_deleteobj(objtype, instnumber){
	var obj = instance_find(objtype, instnumber)
	instance_destroy(obj);
		if variable_instance_exists(id, "onscene") {onscene++;}

}

function scr_playmusic(music, time){
	audio_stop_sound(songinst);
	songinst = audio_play_sound(music, 1, 1);
	audio_sound_gain(songinst, 0, 0)
	if time != undefined audio_sound_gain(songinst, obj_recorder.songvolume/2, time*1000)
	else audio_sound_gain(songinst, obj_recorder.songvolume/2, 0)
		if variable_instance_exists(id, "onscene") {onscene++;}

}

function scr_changedummyseq(instnumber,showing, howsthat, facing, newscale){
	var obj = instance_find(obj_seqdummy, instnumber)
	with obj {
		if newscale != undefined {scr_changeseq(showing, newscale)
		scale = newscale }
		else scr_changeseq(showing, scale)
		}
	if howsthat != undefined obj.howsthat = howsthat //looping seq
		else obj.howsthat = showing;
	if facing != undefined obj.wasfacing = facing //looping seq
	if variable_instance_exists(id, "onscene") {onscene++;}
}

function css_makeobj(xx,yy,object, deepth){
	var septh = depth;
	if deepth != undefined septh = deepth;//looping seq
	 instance_create_depth(xx, yy, septh, object)
		if variable_instance_exists(id, "onscene") {onscene++;}

}

function scr_changevar(obj, instnumber, variable_string, new_value){
	var obj_id = instance_find(obj, instnumber)
	variable_instance_set(obj_id, variable_string, new_value);
	
		if variable_instance_exists(id, "onscene") {onscene++;}

}


function scr_moveobj(obj, instnumber, targetx, targety, spd) {
	var obj_id = instance_find(obj, instnumber)
	obj_id.targetx = targetx
	obj_id.targety = targety
	obj_id.spd = spd
		if variable_instance_exists(id, "onscene") {onscene++;}
}

function scr_textbox(xx, yy, text, sound, name){
	var baby = instance_create(xx, yy, obj_textbox)
	baby.text = text
	baby.sound = sound;
	baby.name = name;
	wait = true;
		if variable_instance_exists(id, "onscene") {onscene++;}

}


//function cs_particles(xx, yy, part_type, ammount)

function scr_spookytext(xx, yy, text, holdtime){
	var baby = instance_create(xx, yy, obj_spookytext)
	baby.text = text
	baby.xx = xx
	baby.yy = yy
	baby.holdtime = holdtime;
	wait = true;
		if variable_instance_exists(id, "onscene") {onscene++;}

}


function scr_makepart(xx, yy, type, number)
{
	part_particles_create(global.partsys, xx, yy, type, number);
		if variable_instance_exists(id, "onscene") {onscene++;}

}

function cs_playsound(sound, pitch)
{
	var soo = play_sound(sound, 1);
	if !is_undefined(pitch ) { audio_sound_pitch(soo, pitch) }
		if variable_instance_exists(id, "onscene") {onscene++;}

}

//function scr_autotextbox(xx, yy, text, sound){ //for textboxes INSIDE levels
//	if instance_exists(obj_autotextbox) instance_destroy(obj_autotextbox); //no overlapping on autos
//	var baby = instance_create(xx,yy, obj_autotextbox)
//	baby.text = text
//	baby.sound = sound;
//}

function scr_wait(waitinframes){
	wait = true;
	alarm[0] = waitinframes;
		if variable_instance_exists(id, "onscene") {onscene++;}

}

function cs_hold(){
	//blank, wait for something external
}

function scr_tossitem(sprite, xx, yy, grav, dir, spd, rotate) {
	var baby = instance_create(xx,yy, obj_flair)
	baby.sprite_index = sprite;
	if dir != undefined baby.direction = dir
	if spd != undefined baby.speed = spd
	if grav != undefined baby.gravity = grav
	if rotate != undefined baby.rotate = rotate
		if variable_instance_exists(id, "onscene") {onscene++;}

}

function scr_endcutscene(roomid){ //when cutscene is over, go to the specified level
	//audio_play_sound(music, 1, 0, 0)
		if variable_instance_exists(id, "onscene") {onscene++;}
		alarm[9] = 10;
		gotoroom = roomid;
}


function scr_endnotification(){ //when cutscene is over, go to the specified level
	
	fadeblack = Approach(fadeblack, 0, 0.05)
	if fadeblack == 0 {
		instance_destroy();
		instance_destroy(obj_seqdummy);
		//instance_destroy(obj_flair);
		if instance_exists(obj_dontshowheart) obj_recorder.corner_heart_overwrite = seq_blank;
		else obj_recorder.corner_heart_overwrite = 0;
	}
}


function scr_continuecutscene(roomid){ //when cutscene is over, go to the specified level
	with obj_recorder{
		scr_roomtrans(roomid, 99)
	}
		if variable_instance_exists(id, "onscene") {onscene++;}

}

function scr_csplaysound(sound,pitch){ //just play a sound, next scnee instantly
	play_sound(sound, pitch)
				onscene++;
}

function cs_camerazoom(zoomtarget, zoomspeed) { //camera zooms in or out, compounding each frame
	// - = zoom , + = zoom out
	if zoomtarget != undefined	obj_cameraman.targetzoom = zoomtarget;
	if zoomspeed != undefined	obj_cameraman.zoomspeed = zoomspeed;
		if variable_instance_exists(id, "onscene") {onscene++;}

}

function cs_change_global(global_name, val) { //changes global variable
	variable_global_set(global_name, val);
	onscene++;
}

function cs_fadeblack(alpha, frames) //over everything
{	//in notifications, it's in the normal draw event
		//in cutscenes, it's in draw GUI
	blalpha = alpha;
	if frames == 0 frames = 0.00001
	var amnt = alpha/frames
	if amnt == 0 amnt = 1/frames
	fadeblack = Approach(fadeblack, alpha, amnt)
	if fadeblack == alpha {		if variable_instance_exists(id, "onscene") {onscene++;}
	}
}

function cs_setupsong(songfilename){ //makes song stream and getse beatmap
	
		if is_string(songfilename) {
			music = audio_create_stream("songs/" + songfilename )
		}
			//	if variable_instance_exists(id, "onscene") {onscene++;}

}

//for notifications vvvvvvvvvv
function scr_notedummy(xoff, yoff, showing, howsthat, facing, scale, float){
	
	var midx = camera_get_view_x(cam) + camera_get_view_width(cam)/2 + xoff
	var midy = camera_get_view_y(cam) + camera_get_view_height(cam)/2 + yoff
		
	var baby = instance_create(midx,midy, obj_seqdummy)
	
	baby.showing = showing //one play, goes to howsthat or stops
	baby.howsthat = howsthat //looping seq
	baby.wasfacing = facing // facing left (-1) or right (1)
	baby.scale = scale//size of seq
	baby.float = float//true if floating
		if variable_instance_exists(id, "onscene") {onscene++;}

}
function scr_notebox(xoff, yoff, text, sound, name){
	var midx = camera_get_view_x(cam) + camera_get_view_width(cam)/2 + xoff
	var midy = camera_get_view_y(cam) + camera_get_view_height(cam)/2 + yoff
	
	var baby = instance_create(midx, midy-200, obj_textbox)
	baby.text = text
	baby.sound = sound;
	baby.name = name;
	wait = true;
		if variable_instance_exists(id, "onscene") {onscene++;}

}








function screcute(scene) {

	//var scene = que[| onscene];
	var len = array_length(scene)-1;
	
	switch len {
		case 0: script_execute(scene[0],  )break;
		case 1: script_execute(scene[0], scene[1], )break;
		case 2: script_execute(scene[0], scene[1], scene[2],)break;
		case 3: script_execute(scene[0], scene[1], scene[2],scene[3],)break;
		case 4: script_execute(scene[0], scene[1], scene[2],scene[3],scene[4],)break;
		case 5: script_execute(scene[0], scene[1], scene[2],scene[3],scene[4],scene[5],)break;
		case 6: script_execute(scene[0], scene[1], scene[2],scene[3],scene[4],scene[5],scene[6],)break;
		case 7: script_execute(scene[0], scene[1], scene[2],scene[3],scene[4],scene[5],scene[6],scene[7],)break;
		case 8: script_execute(scene[0], scene[1], scene[2],scene[3],scene[4],scene[5],scene[6],scene[7],scene[8],)break;
		case 9: script_execute(scene[0], scene[1], scene[2],scene[3],scene[4],scene[5],scene[6],scene[7],scene[8],scene[9],)break;
		case 10: script_execute(scene[0], scene[1], scene[2],scene[3],scene[4],scene[5],scene[6],scene[7],scene[8],scene[9],scene[10],)break;
		
		
		
	}

	
}





