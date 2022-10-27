// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Wrap(input, mini, maxi){

	if input < mini return maxi - abs(mini-input-1)
	if input > maxi return mini + abs(maxi-input+1)
	else return input
}