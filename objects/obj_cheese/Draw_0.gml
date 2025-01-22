/// @description Insert description here
// You can write your code in this editor

if variable_instance_exists(id, "newsprite")
{
draw_sprite_ext(newsprite, image_index, x, y, 
sprite_width/ sprite_get_width(newsprite) ,
sprite_height/ sprite_get_height(newsprite),
image_angle, image_blend, image_alpha)
}
else draw_self();

//draw_text(x, y, x)
//draw_text(x, y+40, y)


//draw_text(x, y, image_alpha)
//draw_text(x, y+30, image_blend)
//draw_text(x, y+60, sprite_get_name(newsprite))