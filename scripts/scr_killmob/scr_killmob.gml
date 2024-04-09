// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_killmob(number){
var fumber = min(number, instance_number(par_mobrat)-1)
var baby = instance_find(par_mobrat, fumber)
if instance_exists(baby) {
		instance_create(baby.x, baby.y-1000, obj_sewerdebris)
		}
}

function scr_lasermob(number, timeleft){
var fumber = min(number, instance_number(par_mobrat)-1)
var baby = instance_find(par_mobrat, fumber)
if instance_exists(baby) {
		var laser = instance_create(baby.x, baby.y, obj_sewerlaser)
		laser.image_yscale = 50;
		laser.image_alpha = 1;
		laser.timeleft = timeleft;
		laser.timeuntil = 0;
		}
}

function scr_makelaser(xx, yy, timeleft, rotation, width, timeuntil){

		var laser = instance_create(xx, yy, obj_sewerlaser)
		laser.image_yscale = 50;
		laser.image_xscale = width; //32px baseline
		laser.image_angle = rotation;
		laser.timeleft = timeleft; //in beats, total lifetime
		laser.timeuntil = timeuntil; //in beats, how long until active

}

function scr_killmadrat()
{
if obj_MadSquare.state == 0
	{
		//if obj_MadSquare.indefatigable {obj_MadSquare.battery_charge-=3 } else
		 obj_MadSquare.enemy_collision_timer = -1;}	
}