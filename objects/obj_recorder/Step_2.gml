/// @description Insert description here
// You can write your code in this editor



v_axis_prev = abs( round (gamepad_axis_value(global.activeController,gp_axislv)+
gamepad_axis_value(global.activeController,gp_axisrv)))
h_axis_prev = abs( round(gamepad_axis_value(global.activeController, gp_axislh)+
gamepad_axis_value(global.activeController,gp_axisrh) ))