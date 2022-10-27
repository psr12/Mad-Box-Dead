/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();


beenhit = 0;
healthpoints = 8;

onbeat = 0;
//onbeat = 17;


startclaw = false;

rclaw = noone;
lclaw = noone;

state = 0;

rain = false;

scalpelphase = 0;//if high enough, use scalpels

lwall = instance_find(obj_crushingwall, 0);
rwall = instance_find(obj_crushingwall, 1);;

alarm[0] = 1