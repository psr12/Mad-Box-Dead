/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

switch leftdown 
{
	case 0:
		targx -= 200; leftdown = !leftdown; timer = 1; break;
	case 1:
		targy += 200; leftdown = !leftdown; timer = 1; break;
		
}


life--;
if !life instance_destroy();