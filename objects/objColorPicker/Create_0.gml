/// @description  INITIALISE VARIABLES

// STARTING COLOR
myColor = $0000FF;

// WHERE THE CURSOR WILL APPEAR
myX = round(360*(color_get_hue(myColor)/255));
myY = 360-round(360*(color_get_saturation(myColor)/255));

// INITIALISE THE HSV FROM THE STARTING COLOR
myHue = color_get_hue(myColor);
mySat = color_get_saturation(myColor);
myVal = color_get_value(myColor);

cp_left = 0;
cp_top = 0;

cp_size = 360

val_top = 0;
val_left = 424

val_width = 36
val_height = 360


op_top = 0;
op_left = 492;
op_size = 64;
