/// @description throttled frame rate

if state = 99 //level editor
{
	var spd = 5;
	if keyboard_check(vk_lshift) {spd = 10}
	{spd *= global.zoom}
	x += (keyboard_check(vk_right) - keyboard_check(vk_left) ) * spd
	y += (keyboard_check(vk_down) - keyboard_check(vk_up) ) * spd
	
	x += (keyboard_check(ord("D")) - keyboard_check(ord("A")) ) * spd
	y += (keyboard_check(ord("S")) - keyboard_check(ord("W")) ) * spd
	
	x = clamp(x, 0, room_width)
	y = clamp(y, 0, room_height)
	
	if !instance_exists(obj_level_editor) state= 0
	if !layer_sequence_exists(layer, seq) 
	{seq = layer_sequence_create(layer, x, y, sidle)
			layer_sequence_xscale(seq, scale)
			layer_sequence_yscale(seq, scale)}
	layer_sequence_x(seq, x)
	layer_sequence_y(seq, y)

	if keyboard_check_pressed(ord("Q") ) {
	if global.mr1 != -1 {x = global.mr1[0]; y = global.mr1[1] global.mr1 = -1 play_sound(snd_beat, 1.5) } //go to 
	else {global.mr1 = [x,y] play_sound(snd_beat, 1.2) } //set tp point
	}
	
	if keyboard_check_pressed(ord("E") ) {
	if global.mr2 != -1 {x = global.mr2[0]; y = global.mr2[1] global.mr2 = -1; play_sound(snd_jump, 1.5)} //go to 
	else {global.mr2 = [x,y] play_sound(snd_jump, 1.2)}//set tp point
	}
exit;
}
//else { image_alpha = 1;}

if state == 0 and keyboard_check_pressed(vk_backspace) {
	state = 86; //suicide button
}

battery_charge = clamp(battery_charge, 0, battery_max_charge)

//if instance_exists(obj_finalstage){ //special timer
//	battery_charge = 100;
//	battery_charge_showing = 100;
//}

if facing {howsthat = false} //cancel emote if direction is pressed

asdf+=time;
while asdf > 1
{ 
	event_user(3); asdf--;
}

layer_sequence_x(seq, x)
layer_sequence_y(seq, y)

if layer_sequence_exists(layer, seq) { //current animation is sped up based on notes
	layer_sequence_speedscale(seq, time+0.5 ) //.5 is arbitrary, just because of how i did seqs
	if time == 0 layer_sequence_speedscale(seq, 0) //for pause
	}
	
if !wjtimer layer_sequence_xscale(seq, wasfacing*scale)


if state != 0 {exit}

if layer_sequence_is_finished(seq) {  //if animation is finished...
	if place_meeting(x,y+1, obj_cheese) //and touching ground...
	{	
		if walking != 0 {scr_changeseq(swalk,scale)} //walking or idle animation...
		else if howsthat {scr_changeseq(howsthat, scale); } //or showboating
		else scr_changeseq(sidle, scale) //idle
	}
	else if place_meeting(x,y,obj_swingpole)
	{	scr_changeseq(asq_mr_swing, scale) }
	else scr_changeseq(sdrop,scale) //if in air, drop animation
	
	if angel != 0 {scr_changeseq(sslide, scale); layer_sequence_angle(seq, angel)}
	}



//emotes
if !keyboard_check(vk_lshift) && !keyboard_check(vk_lshift){
if keyboard_check_pressed( ord("1") ) { scr_changeseq(sshrug, scale) howsthat = sshrug2}
if keyboard_check_pressed( ord("2") ) { scr_changeseq(showsthat, scale) howsthat = showsthat}
if keyboard_check_pressed( ord("3") ) { scr_changeseq(spaws, scale) howsthat = spaws}
if keyboard_check_pressed( ord("4") ) { scr_changeseq(scheer, scale) howsthat = scheer}
if keyboard_check_pressed( ord("5") ) { scr_changeseq(sshocked1, scale) howsthat = sshocked2}
if keyboard_check_pressed( ord("6") ) { scr_changeseq(sheadclutch, scale) howsthat = sheadclutch}
if keyboard_check_pressed( ord("7") ) { scr_changeseq(sangry1, scale) howsthat = sangry2}
if keyboard_check_pressed( ord("8") ) { scr_changeseq(sdemon, scale) howsthat = false}
if keyboard_check_pressed( ord("9") ) { scr_changeseq(sflurry, scale) howsthat = sflurry}
if keyboard_check_pressed( ord("0") ) { scr_changeseq(stired, scale) howsthat = stired}
}
else 
{
if keyboard_check_pressed( ord("1") ) { scr_changeseq(spointlaugh, scale) howsthat = spointlaugh}
if keyboard_check_pressed( ord("2") ) { scr_changeseq(scrossed, scale) howsthat = scrossed}
if keyboard_check_pressed( ord("3") ) { scr_changeseq(shumph, scale) howsthat = shumph}
if keyboard_check_pressed( ord("4") ) { scr_changeseq(strip1, scale) howsthat = strip2}
if keyboard_check_pressed( ord("5") ) { scr_changeseq(sgameover, scale) howsthat = sgameover}
if keyboard_check_pressed( ord("6") ) { scr_changeseq(sturnback1, scale) howsthat = sturnback2}
if keyboard_check_pressed( ord("7") ) { scr_changeseq(sstomp1, scale) howsthat = sstomp2}
if keyboard_check_pressed( ord("8") ) { scr_changeseq(sscared1, scale) howsthat = sscared2}
if keyboard_check_pressed( ord("9") ) { scr_changeseq(sevil, scale) howsthat = sevil}
}

