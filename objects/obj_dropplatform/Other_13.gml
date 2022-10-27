/// @description Insert description here
// You can write your code in this editor
if cancel exit
if place_meeting(x,y-10, obj_MadSquare) && !state
{
	state = 1;
	var so = audio_play_sound(snd_enemydeath2, 1, 0)
	audio_sound_pitch(so, 0.3)
	xstart = x; ystart = y;
}

if place_meeting(x,y, obj_enemy) && state //kill enemies you hit while falling
{
	var  enemy = instance_place(x,y,obj_enemy)
	with enemy event_user(4)
}


if !place_meeting(x,y-10, obj_MadSquare) && state == 1 
{
	countdown = 0;
}

if state && !countdown //falling if state > 0 and no countdown left
{	
	vsp+=grav
	vsp = clamp(vsp,0, 10)
	y+=vsp
}

//if instance_exists(obj_MadSquare) //reset on respawn, or after certain distance
//{
//	if state && (distance_to_point(xstart, ystart) > 4000 //only if mad rat isn't there
//	|| obj_MadSquare.state == 90 ) && !place_meeting(xstart, ystart, obj_MadSquare)
//	{
//		x = xstart; y = ystart;
//		state=0;
//		countdown = 2;
//		vsp=0;
//	}
//}