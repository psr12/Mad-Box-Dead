/// @description Insert description here
// You can write your code in this editor


if shake {
	seqdummy.x = seqdummy.xstart + shake * (current_time mod 2 *2 - 1)
	shake = lerp(shake, 0, 0.1)
}


if hp != hpshowing{
	hpalpha = 3;
	hpshowing = Approach(hpshowing, hp, 6)
}
else hpalpha = Approach(hpalpha, 0, 0.05)




// Inherit the parent event
event_inherited();

