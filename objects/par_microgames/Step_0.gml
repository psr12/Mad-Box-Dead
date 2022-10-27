/// @description Insert description here
// You can write your code in this editor

if timeleft <= 0 	{
	
	//keep offset moving
		var spo = layer_get_fx("Effect_1")
		disoff+=0.01;
		fx_set_parameter( spo ,"g_DistortOffset", disoff )
	//but wait for after the minigame is closing to reduce distort
	if timeleft < 0 {
			distort = lerp(distort, 0, 0.05);
		fx_set_parameter( spo ,"g_DistortAmount", distort )
	}
	

}
