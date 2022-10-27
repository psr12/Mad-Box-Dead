/// @description Insert description here
// You can write your code in this editor
//draw_text(px,py-200, beattimer)

var shaderID = layer_get_shader(layer)
shader_set(shaderID)

var handle = shader_get_uniform(shaderID, "asswipe")
shader_set_uniform_f(handle, brightness)

//no reset so it applies to rest of layer (sequence)


