/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();


main_rot = 0;

movethis = 5;
active = false;

range = 500;

glitchy = false

palarm = 0; //alarm for particles
ptime = 1; //how often to spawn

particle = global.beeline_part

if instance_exists(obj_glitchy) {particle = global.beeline_part_glitchy;
glitchy = true
}
glitchy_alarm_max = 25;
 glitchy_alarm = glitchy_alarm_max

