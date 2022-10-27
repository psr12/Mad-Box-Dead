/// @description Insert description here
// You can write your code in this editor
	global.keyLeft_kb = vk_left;
	global.keyRight_kb = vk_right;
	global.keyUp_kb = vk_up;
	global.keyDown_kb = vk_down;
		global.keyCharge_kb = ord("W");
		global.keyDrop_kb = ord("A");
		global.keyJump_kb = ord("S");
		global.keyDash_kb = ord("D");


	// Values of gamepad buttons
	// This is the control scheme for the gamepads
	global.keyLeft_gp = gp_padl;
	global.keyRight_gp = gp_padr;
	global.keyUp_gp = gp_padu;
	global.keyDown_gp = gp_padd;
		global.keyCharge_gp = gp_face3;
		global.keyDrop_gp = gp_face4;
		global.keyJump_gp = gp_face1;
		global.keyDash_gp = gp_face2;
		
		update_scheme()