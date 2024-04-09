/// @description on beat
// Inherit the parent event
event_inherited();

//layer_sequence_speedscale(seq,time)
if state < 4{
layer_sequence_headpos(seq, 0)
layer_sequence_play(seq) }

beattimer++;
var pawdist = 300;
if instance_exists(obj_vuln_heart) {with obj_vuln_heart {event_user(5)}}

switch state
{
	case 0: //horizontal heart attacks
	var phase = 2; //how many loops to do
		switch beattimer
		{
			case 1: 
				keepit = choose(0,1);
				scr_catpaw_v(px-pawdist, py- (pawdist/2)*keepit, 0); break;	
			case 2: 
				if keepit == 0 {keepit = 1}
				else {keepit = 0}
				scr_catpaw_v(px+pawdist, py- (pawdist/2)*keepit, 180); break;	
			case 8: beattimer=0; phasetimer++; 
				if phasetimer > phase {phasetimer = 0; 
					state++; scr_changeseq(sq_br_cheer, scale) }
				break;
		}
		break;
	case 1: //vertical heart attacks
	var phase = 1; //how many loops to do
	var hdis = 100;
		switch beattimer
		{
			case 1: keepit = choose(-1,1);
				scr_catpaw_v(px+(hdis/2)*keepit, py-pawdist, 270); break;	
			case 4: keepit = keepit == 1 ? -1 : 1
				scr_catpaw_v(px+(hdis/2)*keepit, py-pawdist, 270); beattimer+=5; break;	

			case 11:
				scr_catpaw_v(px-hdis*2, py-pawdist*1.2, 320); 
				scr_catpaw_v(px+hdis*2, py-pawdist*1.2, 220); break;	
			
			case 15: beattimer=0; phasetimer++; 
				if phasetimer > phase {phasetimer = 0;
					state++; scr_changeseq(sq_br_shock, scale)
					
					instance_create_layer(x+75,y+250, "Instances_1", obj_vuln_heart)
					}
				break;
		}
		break;
	case 2: //become vulnerable
		break;
	
	case 3: //repeat
		beattimer = 0;
		hitpoints--;
		scr_changeseq(sq_br_ready, scale)
		if hitpoints state = 0;
		else {state++; scr_changeseq(sq_br_die, scale); }
		phasetimer = 0;
		break;
	case 4: //die
		//fall over sequence, end level

	break;
}

