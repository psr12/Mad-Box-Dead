/// @description Insert description here
// You can write your code in this editor

if state == 0 leftright = sin(timer)
if state == 1 leftright = lerp(leftright, -whodies*3, 0.2)


var linewid = 5; //setup stuff
var linetop = 50;
var linetoptop = 10;
var wiyy =  wiy + leftright * wsway 
var wiyy =  clamp(wiyy, linetop+50, 2000)  
var wayy =  way - leftright * wsway
var wayy =  clamp(wayy, linetop+50, 2000)  


//strings
draw_line_width_color(wix, linetop, wix, wiyy, linewid, c_white, c_white ) //straight up downs
draw_line_width_color(wax, linetop, wax, wayy, linewid, c_white, c_white )

draw_line_width_color(wix, linetop, xmid, linetoptop, linewid, c_white, c_white ) //triangle to top
draw_line_width_color(wax, linetop, xmid, linetoptop, linewid, c_white, c_white )

//pulley wheel
var pscale = 2;
draw_sprite_ext(spr_pulley, 0, xmid, linetoptop+30, pscale, pscale, 
leftright * 250, c_white, 1)
pscale = 1;
draw_sprite_ext(spr_pulley, 0, wix+30, linetop+30, pscale, pscale, 
leftright * 250, c_white, 1)
draw_sprite_ext(spr_pulley, 0, wax-30, linetop+30, pscale, pscale, 
leftright * 250, c_white, 1)

//mob rat
var mobscale = 1;
var hopping = 0;
if state == 1 {hopping = abs( sin(timer*3)*20 )}
draw_sprite_ext(spr_mobdead, 0, wix, victimy-hopping, mobscale, mobscale, 0, c_white, 1)
draw_sprite(spr_cheese, 0, wax, victimy+20)

//weights
var wscale = 4;
var wsprite = spr_weight
var whei= sprite_get_height(spr_weight)*wscale / 2
 wiyy =  clamp(wiyy, linetop+whei, victimy-whei/2)  
 wayy =  clamp(wayy, linetop+whei, victimy-whei/2)  

draw_sprite_ext(wsprite, 0, wix, wiyy,wscale, wscale, 0, c_white, 1) 
draw_sprite_ext(wsprite, 0, wax, wayy,wscale, wscale, 0, c_white, 1) 

//glasses
var gscale = 3;
draw_sprite_ext(spr_glass, 0, wix, victimy- sprite_get_height(spr_glass)/5, gscale, 1, 0, c_white, 1)
draw_sprite_ext(spr_glass, 0, wax, victimy- sprite_get_height(spr_glass)/5, gscale, 1, 0, c_white, 1)

//censor
if state == 1 and whodies == -1{
	var censorscale = 6;
	draw_sprite_ext(spr_censored, 0, xmid + 400*whodies, victimy, censorscale/2,
	censorscale, 0, c_white, 1)
}


var arrowdist = 100; //arrows
var arrowy = ymid + 150;
var ascale = 2 - leftright *0.5
if state == 1 {if whodies {ascale = 2.5} else {ascale = 1.5} }
draw_sprite_ext(spr_redarrow, 0, xmid + arrowdist, arrowy, ascale, ascale, 0, c_white, 1)
var ascale = 2 + leftright *0.5
if state == 1 {if !whodies {ascale = 2.5} else {ascale = 1.5} }
draw_sprite_ext(spr_redarrow, 0, xmid - arrowdist, arrowy, -ascale, ascale, 0, c_white, 1)


//lever hand
var lscale = 2.5; var fulltilt = 20;
//if state == 0 lrot = sin(timer) * 20
//if state == 1 {lrot = lerp(lrot, -whodies * fulltilt, 0.1) }
lrot = leftright*fulltilt
draw_sprite_ext(spr_leverhand, 0, xmid, room_height, lscale, lscale, lrot, c_white, 1)



