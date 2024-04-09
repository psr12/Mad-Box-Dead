/// @description Insert description here
// You can write your code in this editor
/*

draw_text(300, 300, ds_list_size(lay_order) ) 

var p = 0
repeat(ds_list_size(bglayerlist) ) {
draw_text( 100, 100+ 50*p, layer_get_name(bglayerlist[| p] ) )
p++
}