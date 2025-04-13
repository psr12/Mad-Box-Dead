// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function relerp(a1, a2, v, b1, b2) {
    return b1+(v-a1)/(a2-a1)*(b2-b1);
}