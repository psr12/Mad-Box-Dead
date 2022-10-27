/// @description on beat
// Inherit the parent event
event_inherited();


waiting--;
if !waiting {waiting = wait;
facing = -facing;
}

if notyet {

orange = angle_difference(0,image_angle); //orange = original angle
swing = orange; //swing = current angle

radius = sprite_width/2; // hitbox

notyet = false; 
}

