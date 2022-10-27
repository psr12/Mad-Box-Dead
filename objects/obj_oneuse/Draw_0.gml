/// @description Insert description here
// You can write your code in this editor



var shaderID = layer_get_shader(layer)
shader_set(shaderID)

var handle = shader_get_uniform(shaderID, "asswipe")
shader_set_uniform_f(handle, 0)
