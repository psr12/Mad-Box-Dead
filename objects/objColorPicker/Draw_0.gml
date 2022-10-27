/// @description  DRAW THE COLOR PICKER

// DRAW THE COLOR PICKER, VALUE SLIDER AND COLOR BOX
draw_set_color($212121);
draw_rectangle(val_left, val_top,val_left+val_width,val_top+val_height,0); //slider bg

draw_set_color(myColor);
draw_rectangle(op_left, op_top, op_left+op_size, op_top+op_size, false); //output color

draw_set_color(c_white);
draw_rectangle(val_left, val_top + (val_height - round((myVal/255)*val_height)  )
,val_left+val_width,val_top+val_height,0); //slider white part

draw_sprite_stretched(sprColorPicker,0,cp_left,cp_top, cp_size, cp_size); //color picker box

draw_set_color($212121); 
//draw_rectangle(492,0,688,360,1); //output color outline
//draw_rectangle(0,0,360,360,1); //color picker background

// DRAW THE CURSOR
draw_set_color(c_white);
draw_sprite(sprColorPickursor,0,x+myX,y+myY);

