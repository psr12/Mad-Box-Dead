/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

switch state
{
	case 0: y = flerp(y, mad.y, 0.4); x = flerp(x, mad.x + dist*leftright, 0.5) break;
	case 1: y = flerp(y, mad.y, 0.8) x = flerp(x, mad.x + dist*leftright, 0.5) break;
	case 2: image_angle += 15; x = lerp(x, mad.x + dist*leftright, 0.2) break;
	case 3: image_angle += 35; x = lerp(x, mad.x + dist*leftright, 0.1)
	break;
}




