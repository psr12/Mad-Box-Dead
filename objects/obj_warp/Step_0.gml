/// @description Insert description here
// You can write your code in this editor


if place_meeting(x,y,obj_MadSquare)
{
	obj_MadSquare.y -= dist;
	obj_MadSquare.grav = 0
	obj_MadSquare.vsp = 0
	
	with obj_MadSquare { //grounded behavior, so it's less annoying
		jumps = 2;
	dashes = 1;
	charges = 1;
	hsliding = lerp(hsliding, 0, 0.1) //sliding stop very quickly on land
	didyoujustdroponanenemy = false; //for stylish animations
	
	gustv = 0; //so you can land on platforms in L13	
	}
	
}
