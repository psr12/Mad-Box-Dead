/// @description Insert description here
// You can write your code in this editor



var failsafe = 0;
do {x = random_range(0, room_width-50); y = random_range(0, room_height-100); failsafe++; }
until (

(!collision_rectangle(150, 220, 1200, 760, self, false, false) 
and distance_to_object(obj_eyeflair) > 100)

|| failsafe > 50
)

if failsafe > 50 instance_destroy()
alarm[0] = random(200)+100

blinktime = 10;
timer=0;