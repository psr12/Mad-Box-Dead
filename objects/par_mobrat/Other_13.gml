/// @description step
event_inherited();

if place_meeting(x,y, par_sewerhit)
{
	instance_destroy()
	event_user(4)
}

if instance_exists(obj_glitchy) and distance_to_object(obj_MadSquare) < 30 event_user(4)
//for memory area, they always die when close

#region collision

vsp+=grav;

if place_meeting(x+hsp, y, obj_cheese)
{
	while !place_meeting(x+sign(hsp), y, obj_cheese)
	{x+=sign(hsp)}
	hsp = 0;
}
x += hsp
if place_meeting(x, y+vsp, obj_cheese)
{
	while !place_meeting(x, y+sign(vsp), obj_cheese)
	{y += sign(vsp)}
	vsp = 0;
}

y += vsp

#endregion

#region seq handling

if layer_sequence_exists(layer, seq) {

layer_sequence_x(seq, x)
layer_sequence_y(seq, y)

layer_sequence_xscale(seq, facing*scale)
}
#endregion



