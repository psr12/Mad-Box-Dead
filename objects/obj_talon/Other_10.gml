/// @description on beat
// You can write your code in this editor

// Inherit the parent event
event_inherited();



beats_until_die--;


if !beats_until_die
{
	instance_destroy();
}
