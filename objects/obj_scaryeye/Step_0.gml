/// @description Insert description here
// You can write your code in this editor


if !on and place_meeting(x, y, obj_MadSquare)
{
	on = true;
}
else if on{
	ymult = lerp(ymult, 1, 0.05);
}