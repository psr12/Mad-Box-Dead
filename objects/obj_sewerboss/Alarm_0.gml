/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_cameraman)
{
	global.zoom = 2;
	obj_cameraman.targetzoom = 2;
	obj_cameraman.camlock = true;
	obj_cameraman.x = 950
	obj_cameraman.y = 800

}

with obj_cheese {
	sprite_index = spr_bg_dkgray;
	newsprite = spr_bg_dkgray;
}