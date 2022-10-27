// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_chseqlist(){ //normal list
		with obj_recorder {
			seqlist = [
			ch_idle,
			ch_fistpump,
			ch_triforce,
			]
		}
}
function scr_chseqlist2(){ //post reveal heart
	
	with obj_recorder {
			seqlist = [
		ch_fistpump,
		ch_nervousfistpump,
		ch_scared,
		ch_shocked,
		]
	}

}