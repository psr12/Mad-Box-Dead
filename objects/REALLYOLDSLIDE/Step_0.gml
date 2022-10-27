/// @description Insert description here
// You can write your code in this editor

image_xscale = abs(image_xscale)
image_yscale = abs(image_yscale)

image_angle = image_angle mod 360
if image_angle < 0 image_angle += 360

if image_angle > 290 || image_angle < 60 //max angles, red side up, go right
{ top = "red" }
else if image_angle < 250 && image_angle > 100 //yellow side up, go left
{ top = "yellow" }
else top = "none" //if it's turned on its side, no sliding

