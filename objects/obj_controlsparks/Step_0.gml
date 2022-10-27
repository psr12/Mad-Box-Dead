/// @description Insert description here
// You can write your code in this editor

time--;
if time == 20 
{
	with obj_makesparks on = true;
}
if !time 
{
	with obj_makesparks on = false;
	time = choose(120, 180, 40, 90, 100, 70)
}
