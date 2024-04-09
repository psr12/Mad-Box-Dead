/// @description Insert description here
// You can write your code in this editor


if place_meeting(x,y,obj_MadSquare)
{
	obj_cameraman.camlock = true;
	obj_cameraman.x = room_width/2;
	obj_cameraman.y = obj_MadSquare.ystart;
	instance_destroy()
}