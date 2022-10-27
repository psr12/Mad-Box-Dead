/// @description Insert description here
// You can write your code in this editor

if gethim {targetx = obj_MadSquare.x; move = true;
	targety = obj_MadSquare.y-500;
	}

//auto movement
if move {
var ldx = lengthdir_x( spd, point_direction(x, y, targetx, targety) )
var ldy = lengthdir_y( spd, point_direction(x, y, targetx, targety) )

x += ldx
y += ldy

if abs(x - targetx) <= spd x = targetx
if abs(y - targety) <= spd y = targety
if x = targetx and y = targety {move= false;}
}


if turn != 0 //rotation animation
{
	curframe = 0;
	leftright = turn;
	inval = rot;
	endval = maxrot * leftright
}
curframe++ 
rot = scr_ease(curframe, inval, endval, maxframe )



if crush {  //grabby animation
	claw_clamp = lerp(claw_clamp, -0.7, 0.7)	
}
else {
	claw_clamp = lerp(claw_clamp, 1, 0.7)
}



if hurt { //collision hurting
	if collision_circle(x,y, hurt, obj_MadSquare, false, false)
	{
		scr_killmadrat()
	}
}


