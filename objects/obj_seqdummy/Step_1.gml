/// @description Insert description here
// You can write your code in this editor

if blue {blue = false; layer_shader(layer, shader_blue) }



addscale = lerp(addscale, 1, 0.02)


if layer_sequence_is_finished(seq) {  //if animation is finished...
if howsthat scr_changeseq(howsthat,(scale*addscale))
else scr_changeseq(showing,(scale*addscale))
	}
	
	
	
if instance_exists(obj_cutscenehandler)
{
	if instance_exists(obj_ratface) {obj_ratface.sprite_index = obj_cutscenehandler.ratface;}
	if instance_exists(obj_heartface) {obj_heartface.sprite_index = obj_cutscenehandler.heartface; 
	//obj_heartbody.sprite_index = heartbody;
	}
}

var shaking = 0
if shake {shaking = random(10) }
	
if float floattime+= floattimeadd;
layer_sequence_x(seq, x)
layer_sequence_y(seq, y + sin(floattime) * 10 + shaking )

layer_sequence_xscale(seq, wasfacing* (scale*addscale))
layer_sequence_yscale(seq, (scale*addscale))

var ldx = lengthdir_x( spd, point_direction(x, y, targetx, targety) )
var ldy = lengthdir_y( spd, point_direction(x, y, targetx, targety) )

x += ldx
y += ldy

if abs(x - targetx) < spd*2 x = targetx
if abs(y - targety) < spd*2 y = targety


