/// @description Insert description here
// You can write your code in this editor
if hp <=0 {
	exit;
}

if gust != 0
{
	repeat(20) {
		var yyy = random(800)
	draw_line(-1000, yyy, 4000, yyy)
	}
}


draw_sprite_ext(sprite_index, image_index, x, drawy, scale, scale, 0, image_blend, image_alpha)

/*

time += 0.02

shader_set(shader_scanlines)
shader_set_uniform_f(timeid, time);

draw_self()

shader_reset();