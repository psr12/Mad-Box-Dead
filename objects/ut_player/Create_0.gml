/// @description Insert description here
// You can write your code in this editor

surface = surface_create(display_get_gui_width(), display_get_gui_height() ) //bullets and heart

// Inherit the parent event
event_inherited();

pitch_count = 0; // (-15) through 15

instance_create(x, y, ut_bulletbg)

cursorsprite = spr_br_heart;

menu_sprites = [us_fight, us_act, us_item, us_spare];

menu_move_sound = snd_collect
menu_select_sound = snd_menutick


four_icons_cursor_selection = 0; // 0-3, fight-spare

menu_level1_selection = 0; //item > select item
//fight, act, or spare > monster select

menu_level2_selection = 0
// act > select action

alarm[0] = 3;
monster_list = ds_list_create()
textinbox = "Clockwork Rat appears!";

inventory = ds_list_create()
ds_list_add(inventory, 
"Automatic Swiss",
"Brienana",
"Nuts and Bolts",
"True Bleu",

)

state = 0;
obj_recorder.corner_heart_overwrite = seq_blank;

//  room_width = 1366
attackbox_w_menu = 1100;
attackbox_w_dodge = 400;
attackbox_w = attackbox_w_menu;

attackbox_h_menu = 230;
attackbox_h_dodge = 230;
attackbox_h = attackbox_h_menu;

icon_alpha = 1;
recalpha = 0 //recorder's note alpha, reapplied each step

maxhp = 20;
hp = maxhp;

