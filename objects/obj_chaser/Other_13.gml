/// @description step
// Inherit the parent event
event_inherited();


	
if !didwestart { //record starting x/y on first beat, so it doesn't jump to where you spawned it
tarx1 = x;
tary1 = y;
didwestart = true;}

	hsp = (tarx1-x)*ler //zoom towards target
	vsp = (tary1-y)*ler
	
x += hsp;
y += vsp;

if !deadin {image_alpha = lerp(image_alpha, 0, 0.1) 
	if image_alpha < 0.01 {instance_destroy()}
	}

pulse = lerp(pulse, 0, 0.2); //shrink blue circle

outards_spin += -hsp/2 + -1