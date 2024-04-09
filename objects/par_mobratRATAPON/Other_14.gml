/// @description die

event_inherited();

instance_destroy()
if instance_exists(obj_mobrathandler) obj_mobrathandler.showratnum--;


part_particles_create(global.partsys, x, y, global.gear_part, 10)
				
if !instance_exists(obj_glitchy) {
	var bab = instance_create(x,y, obj_mobdead)
	bab.image_xscale = facing;
	bab.hsp  = facing * 5;
}
	
	
play_sound(snd_mobratdie, 1 + random(0.1) )