/// @description  step'
// Inherit the parent event
event_inherited();

musicstarted = true; //for room editor

xscale = lerp(xscale, 1, 0.2)
yscale = lerp(yscale, 1, 0.2)

switch state
{
	case 0: //idle
		//choose next attack
		
		pickattack = attacklist[| 0];
		ds_list_delete(attacklist, 0)
		if ds_list_empty(attacklist) {ds_list_add(attacklist, 0,1,2,3) ds_list_shuffle(attacklist)}
		if pickattack == 0 showattackname = "METEOR" 
		if pickattack == 1 showattackname = "SCYTHE"
		if pickattack == 2 showattackname = "PILLARS"
		if pickattack == 3 showattackname = "STARSTORM"
		xscale = .8
		yscale = 1.2
		state++
	break;
	
	case 1: //show attack name
		sprite_index = rg_ratgod2;
		timer++;
		if timer >= beforetheattack {timer = 0; state++;
			showattackname = ""
		if pickattack == 0 state = 2 //meteor
		if pickattack == 1 state = 3 //scythe
		if pickattack == 2 state = 4 //pillars
		if pickattack == 3 state = 5 //starstorm
			
			}
	break;
	
	case 2: //meteor
	
		instance_create_depth(mad.x+3500, mad.y-3000, 0, obj_meteor)
		instance_create_depth(mad.x, mad.y-2500, 0, obj_meteor)
		instance_create_depth(mad.x-3500, mad.y-3000, 0, obj_meteor)
		sprite_index = rg_ratgod1;
		xscale = .8
		yscale = 1.2
		state= 45;
	break;
	
	case 3: //scythe
		var scythe = instance_create_depth(mad.x, mad.y, 0, obj_scythe)
		sprite_index = rg_ratgod1;
		xscale = .8
		yscale = 1.2
		state= 45;
	break;
	case 4: //pillars
		for (var i = 0; i <= 10; i++)
		{
		var scythe = instance_create_depth(mad.x-2500+800*i, mad.y+100, 0, obj_pillar)
		scythe.offset = 0+i*10
		}
		for (var i = 0; i <= 10; i++)
		{
		var scythe = instance_create_depth(mad.x-2900+800*i, mad.y+150, 0, obj_pillar)
		scythe.offset = 120*1.5 + i*10
		}
		sprite_index = rg_ratgod1;
		xscale = .8
		yscale = 1.2
		state= 45;
	break;
	
	case 5: //starstorm
		
		var star = 0;
		for ( star = -8; star < 8; star++)
		{
			instance_create_depth(mad.x-1500+star*1000, mad.y-1000, 0, obj_starstorm)
			instance_create_depth(mad.x-1200+star*1000, mad.y-2000, 0, obj_starstorm)
			instance_create_depth(mad.x-800+star*1000, mad.y-3000, 0, obj_starstorm)
			instance_create_depth(mad.x-400+star*1000, mad.y-4000, 0, obj_starstorm)
		}
		sprite_index = rg_ratgod1;
		xscale = .8
		yscale = 1.2
		state= 45;
	break;
	
	case 45: //wait for attack to finish
		timer++;
		if timer >= eachattacktakes {timer = 0; state=0;}
	break;

}