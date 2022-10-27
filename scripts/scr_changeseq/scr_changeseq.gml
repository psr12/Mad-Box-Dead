// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_changeseq(sequence, scale){
	
	layer_sequence_destroy(seq)
	seq = layer_sequence_create(layer, x, y, sequence)
	layer_sequence_xscale(seq, scale)
	layer_sequence_yscale(seq, scale)
}