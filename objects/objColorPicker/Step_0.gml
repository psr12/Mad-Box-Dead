/// @description  CHECK THE MOUSE INPUT

// CHECK IF THE MOUSE IS HELD DOWN

if (mouse_check_button(mb_left)) {

    // CHECK IF THE MOUSE IS ON THE COLORED AREA

    if (is_mouse_here(cp_left,cp_top,cp_left+cp_size,cp_top+cp_size)) {
    
        // MOVE THE CURSOR SPRITE
        myX = mouse_x - x; 
				//how to make work in GUI?
        myY = mouse_y - y;
        
        // SET THE HUE AND SATURATION BASED ON THE MOUSE POSITION
        myHue = round((myX/cp_size)*255);
        mySat = 255-round((myY/cp_size)*255);
        
        // MAKE THE COLOR
        myColor = make_colour_hsv(myHue,mySat,myVal);
    
    }
    
    // CHECK IF THE MOUSE IS ON THE VALUE SLIDER

    if (is_mouse_here(val_left,val_top,val_left+val_width,val_top+val_height)) {
    
        // SET THE VALUE TO MATCH THE SLIDER
        myVal = 255-round(((mouse_y)/val_height)*255);
        
        // MAKE THE COLOR
        myColor = make_colour_hsv(myHue,mySat,myVal);
    
    }

}

