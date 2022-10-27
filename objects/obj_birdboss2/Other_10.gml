/// @description on beat
// You can write your code in this editor

// Inherit the parent event
event_inherited();




switch state {


case 0: //pick attack
	if attacknum < attacks_per_phase {
		if !justusedtalon		attack = choose(1,2);
		else attack = choose(2);
		}
	else {attack = 7; attacknum=0 }
	state = 1;
	attacknum++;
	
	if hp <= 6 {image_speed = 2; gust = choose(-1, 1, 0) }
	image_speed = 1 + abs(gust)
	
break;
	
case 1: //spawn attack

	switch attack {
		case 1: //TALONS
			instance_create_layer(x, y+100, "Instances_2", obj_beakattack);
			justusedtalon = true;
			break;
		case 2: //Feathers
			var fethob = obj_featherattack;
			if hp <= 4 fethob = obj_featherattack2
			var baby = instance_create_layer(x, bbox_top, "Instances_2", fethob);
			baby.rando = irandom(30);
			justusedtalon = false;
			break;
			
			
		case 7: //vuln head attack
			instance_create_layer(x-300, y+100, "Instances_2", obj_headattack);
			justusedtalon = false;
			break;
	}
	state++;
break;

case 2: //wait for attack object to finish
break;

	
}