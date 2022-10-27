/// @description Insert description here
// You can write your code in this editor

state = 0;
timer = 0;

prompt = ""

seq = seq_blank;

promptime = room_speed/4;
maxpromptime = room_speed/4;

timeleft = 8;

win = false;

distort = 0
disoff = 0

pitch = obj_microgameshandler.pitch

#region particles
partsys = part_system_create()

part_spark = part_type_create()
part_type_shape(part_spark, pt_shape_spark)
part_type_life(part_spark, 30,30)
part_type_size(part_spark, 3,3, 0, -0.05)
part_type_direction(part_spark, 0,360, 0, 0)
part_type_speed(part_spark, 12,12, 0, 0)
part_type_alpha2(part_spark, 1, 0)
part_type_orientation(part_spark, 0, 360, 0, 1, 0)

part_splash = part_type_create()
part_type_shape(part_splash, pt_shape_ring)
part_type_color1(part_splash, c_aqua)
part_type_life(part_splash, 30,30)
part_type_size(part_splash, 0.5, 0.5, 0, 0)
part_type_direction(part_splash, 90,180, 0, 0)
part_type_speed(part_splash, 12,12, 0, 0)
part_type_alpha2(part_splash, 1, 0)
part_type_orientation(part_splash, 0, 360, 0, 1, 0)
part_type_gravity(part_splash, 0.5, 270)

#endregion