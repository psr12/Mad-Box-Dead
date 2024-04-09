/// @description step
// Inherit the parent event
event_inherited();

if state == 0 {
	if place_meeting(x,y, obj_MadSquare) and obj_MadSquare.state == 0 {
		state = 1;
	}
}

if state == 1 {
}
if state == 2 {
		if wait <= 0 { image_alpha = Approach(image_alpha, 0, 0.01) } 
		else image_alpha = Approach(image_alpha, 0.5, 0.01)
		if image_alpha <=0 and !wait {instance_destroy()}
}