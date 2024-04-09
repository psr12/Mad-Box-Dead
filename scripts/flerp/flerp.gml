// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function flerp(val1, val2, ammount){ //lerp, but it finishes if within 1%
var giveit = lerp(val1, val2, ammount)
if giveit/val2 >= 0.99 return val2 //if within 1% of target, just return target value
else return giveit
}


function zlerp(val, ammount) { //above doesn't work with 0, this ONLY works with 0

	if val > 0 {

		var give = lerp(val, 0, ammount)
		if give < val * 0.01 {
			return 0
		}

		else return give;
	}
	if val <= 0 {
		val = -val
		var give = lerp(val, 0, ammount)
		if give < val * 0.01 {
			return 0
		}

		else return -give;
	}
}
