/// @description 

switch state{

case 0:	
	waitforfade--;
	if waitforfade <= 0 {
alpha = Approach(alpha, 1, 0.001)
	if alpha > 0.5 alpha = Approach(alpha, 1, 0.001) //souble up
	}
break;

case 1: 
	timer--;
	if timer <= 0 
	{
	alpha = Approach(alpha, 0, 0.002)
	if alpha > 0.5 alpha = Approach(alpha, 0, 0.001)
	}
break;

}

if state == 1 and alpha == 0 {instance_destroy() }
