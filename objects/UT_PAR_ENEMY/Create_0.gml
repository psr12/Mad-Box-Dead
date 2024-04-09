/// @description Insert description here
// You can write your code in this editor



seqdummy = scr_makedummy(x, y, sq_mb_idle, sq_mb_idle, 1, 2)

saytext = "";

act_options = ["* CHECK", "* WIND UP" , "* WIND DOWN" ]

check_info = @"ATK 5  DEF 15
Best suited for simple tasks."

myname = "Clockwork Rat"

// Inherit the parent event
event_inherited();

shake = 0;

hp = 1200;
maxhp = hp;
hpshowing = hp;
hpalpha = 0;