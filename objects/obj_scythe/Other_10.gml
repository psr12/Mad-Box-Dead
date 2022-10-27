/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();


switch state
{
	case 0: state++; break;
	case 1: state++; break;
	case 2: state++; leftright = -leftright; break;
	case 3:  state = 0; break;
}

life--;
if !life instance_destroy();