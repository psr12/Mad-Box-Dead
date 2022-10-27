/// @description Insert description here
// You can write your code in this editor


if finish 
{
	repeat (4) {
			var i= random_range(180, 360)
			part_type_direction(global.part_sprinkler, i, i, 0, 0)
			//part_type_orientation(global.part_sprinkler, i, i, 0, 0, true)
			//part_type_direction(global.part_sprinkler, i, i, sign(270-i)*0.005, 0)
			//part_type_orientation(global.part_sprinkler, i, i, sign(270-i)*0.005, 0, true)
			part_particles_create(global.partsys, x,y, global.part_sprinkler, 1)
	}

}
