/// @description Insert description here
// You can write your code in this editor


layer_sequence_destroy(seq)

	
		var spo = layer_get_fx("Effect_1")
		fx_set_parameter( spo ,"g_DistortAmount", 0 )
		fx_set_parameter( spo ,"g_DistortOffset", 0 )
		

instance_destroy();