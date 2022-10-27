// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_artymoves(clawid, tarx, tary, spd){
	if instance_exists(clawid) {
	clawid.targetx = tarx
	clawid.targety = tary
	clawid.move = true
		if spd != undefined {clawid.spd = spd}
	}

}

function scr_artyturns(clawid, dir){
	if instance_exists(clawid){
	clawid.turn = dir
	}
}

