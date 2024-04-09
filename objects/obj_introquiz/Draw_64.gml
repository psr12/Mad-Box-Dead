/// @description Insert description here
// You can write your code in this editor



draw_set_color(c_white);
draw_set_font(Font1);

var inputdist = 60
//draw_text(100, 100, state);

switch state {
	
	
case 0: 
	draw_ctext(cam_w/2, cam_h/2, "What is your name?")
	draw_ctext(cam_w/2, cam_h/2 + inputdist, keyboard_string + textcursor)
break;
	
case 1: 
	draw_ctext(cam_w/2, cam_h/2, "What is your favorite food?")
	draw_ctext(cam_w/2, cam_h/2 + inputdist, keyboard_string + textcursor)
break;
	
case 2: 
	draw_ctext(cam_w/2, cam_h/2, "What is the most important quality in a person?")
	draw_ctext(cam_w/2, cam_h/2 + inputdist, keyboard_string + textcursor)
break;
	
	
	case 6: 
	draw_ctext(cam_w/2, cam_h/2, "Okay, that's all I wanted.")
	break;
	
}