/// @description destroy self



instance_destroy();
play_sound(snd_bonk)

#region convert uncollected pickups into balloons
if instance_exists(obj_pickup) play_sound(snd_enemydeath, 0.8)
with obj_pickup { //convert pickups to enemies
	part_particles_create(global.partsys, x, y, global.shine, 1);
	var balloon = instance_create(x, y, obj_balloon)
	with balloon {image_scale(2) }
	instance_destroy()
}

repeat(4){
var spot = irandom_range(0, instance_number(ph_1)-1 )
var inst = instance_find(ph_1, spot)

if !collision_point(inst.x,inst.y, obj_pickup, false, false) 
	and !collision_point(inst.x,inst.y, obj_balloon, false, false)
instance_create(inst.x,inst.y, obj_pickup);
}
#endregion

#region do not convert pickups into balloons
//repeat(4){
//var spot = irandom_range(0, instance_number(ph_1)-1 )
//var inst = instance_find(ph_1, spot)

//if !collision_point(inst.x,inst.y, obj_pickup, false, false) instance_create(inst.x,inst.y, obj_pickup);
//}
#endregion

scr_shakecamera(100)

part_particles_create(global.partsys, x, y, global.part_triangles, 60);

if instance_exists(obj_blank_rat)
{
	obj_blank_rat.state++;
}