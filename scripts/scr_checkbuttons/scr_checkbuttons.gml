// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_checkbuttons(pressed, w, a, s, d){
	
if !pressed {
if w if input_check(global.keyCharge) return true
if a if input_check(global.keyDrop) return true
if s if input_check(global.keyJump) return true
if d if input_check(global.keyDash) return true
}
else {
if w if input_check_pressed(global.keyCharge) return true
if a if input_check_pressed(global.keyDrop) return true
if s if input_check_pressed(global.keyJump) return true
if d if input_check_pressed(global.keyDash) return true
}

return false

}