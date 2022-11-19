/// @description Insert description here
// You can write your code in this editor


if state == 0 {
	timer--; 
	if !timer {state = 1; timer = 600}
}

if state == 1 {
	image_alpha = Approach(image_alpha, 1, 0.01)
	timer--;
	if !timer {state = 2; timer = 300;}
}

if state == 2 {
	image_alpha = Approach(image_alpha, 0, 0.01)
	timer--;
	if !timer {instance_destroy() }
}



