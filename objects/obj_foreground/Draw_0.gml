/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
if instance_exists(obj_level_editor) && alarm[0] < 0
{
	if obj_level_editor.state == 99 { layer_background_alpha(bglayerlist[| 0], 1) }
	else { layer_background_alpha(bglayerlist[| 0], 0.2) }
}

event_inherited();

//draw_set_alpha(1)