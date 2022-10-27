/// @description Insert description here
// You can write your code in this editor


if !holdspace and started { //small hearts
	montimer--;
	if ! montimer {montimer = maxmontimer; showlevel++}
}

if holdspace //large heart
{
	//showlevel = monumw*monumh;
	showlevel = -1;
}


salpha = Approach(salpha, 0.01, 0.001)

helpstatic += sprite_get_speed(spr_static) / game_get_speed(gamespeed_fps);

if Chance(0.001) salpha = 0.1
