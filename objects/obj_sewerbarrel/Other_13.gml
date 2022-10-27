/// @description step

if fuckthis {exit;};

if instance_exists(chip) {
chip.y = bbox_top-50;
}

if (     !place_meeting(x,y-1, obj_MadSquare) and !place_meeting(x,y-1, par_mobrat) 
and  !place_meeting(x,y-1, obj_mobratvuln)     ) and
place_meeting(x, y-sprite_height/2, obj_jumpywater)
and !sunk
{
	y--;
}

	if getup {
			var watspeed = 0.15;
		with obj_jumpywater {
				if bbox_top > 600 {
				y -= watspeed;
				obj_addwater.on = true;
			}
			else {obj_addwater.on = false;}
		}
	}

if sunk {
	if !place_meeting(x,y-sprite_height/3, obj_cheese) {y += 1;}
}

if !stoptoxic {
	with obj_jumpywater {
		toxicness = Approach(toxicness, 1, 0.002)
	}
}
else 
{
	with obj_jumpywater {
		toxicness = Approach(toxicness, 0, 0.01)
	}
}