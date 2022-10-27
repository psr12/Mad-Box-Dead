/// @description Insert description here
// You can write your code in this editor

with obj_MadSquare 
{
	state = 99;
}
with obj_recorder
{
	state = 99;
}
with obj_cheese {image_alpha = 1;}

state = 0;

scr_level_load(global.level) //spawn in objects, from the custom level's text file