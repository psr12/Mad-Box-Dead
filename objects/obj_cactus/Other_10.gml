/// @description beat
// Inherit the parent event
event_inherited();

if cooldown == topcooldown
{
	topspeed = 0	
}

if turnaround {
	image_xscale *= -1
	turnaround = false
}

cooldown--
if !cooldown {
	extra = topextra*abs(image_xscale)
	cooldown = topcooldown;
	topspeed = image_xscale*2
}

bounce = 1


