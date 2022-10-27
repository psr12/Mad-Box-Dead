/// @description Creates an instance of a given object at a given position.
/// @param x The x position the object will be created at.
/// @param y The y position the object will be created at.
/// @param obj The object to create an instance of.
function instance_create(argument0, argument1, argument2) {
	
	var baby = instance_create_layer( argument0, argument1, layer, argument2 );
	with baby {progenitor = other.id;}
	return baby;
}
