/// @description Insert description here
// You can write your code in this editor


	
switch state{ //intro
	

case 0:
	alpha = Approach(alpha, 0.4, 0.02)
	if alpha == 0.4 state++;

break;

case 1:
	drawx = Approach(drawx, x, 50)
	if drawx == x state++;
break;

case 2:
	showratnum = Approach(showratnum, ratsleft, 1)
	if showratnum == ratsleft {timer++; }
	if timer >= 50 {state++; timer=0; play_sound(snd_justgoforit, 1)
		goy = 200; }
break;

case 3:
	var molen = 120;
	var xtar = 1200;
	var ytar = 550
	rnscale = Approach(rnscale, 1, 0.02)
	drawx = Approach(drawx, xtar, (xtar-x)/molen)
	drawy = Approach(drawy, ytar, (ytar-300) / molen)
	
	timer++ if timer > 20{
		showit+= 0.3;
		justshowforit = string_copy(justgoforit, 0, showit)
		if showit >= string_length(justgoforit)
		and drawx == xtar and drawy == ytar
		{timer=0; state++;	}
	}


break;


case 4:
	gox = Approach(gox, 2000, 50);
	alpha = Approach(alpha, 0, 0.05);
	if gox > 1500 and alpha == 0 {timer=0; state = 9;}
break;


}

