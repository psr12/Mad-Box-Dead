/// @description Insert description here
// You can write your code in this editor


if instance_exists(obj_MadSquare) {
	x = obj_MadSquare.x
	y = obj_MadSquare.y
}

if instance_exists(obj_recorder) {
	with obj_recorder {recalpha = Approach(recalpha, 0, 0.005) 
		}
}
