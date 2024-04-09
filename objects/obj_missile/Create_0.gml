/// @description Insert description here
// You can write your code in this editor

depth -= 2000;

state = 0;
timer = irandom(250);

particle = global.part_trail

dir = 270;

spd = 5;

inc = 0;
targetx = x;
targety = room_height-200;
// Inherit the parent event
event_inherited();

targeter_timer_max = 50;
targeter_timer = targeter_timer_max;