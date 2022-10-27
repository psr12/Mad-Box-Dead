/// Approach(a, b, amount)
///@param var
///@param apro
///@param ammount
function Approach(variable, approach, ammount) {

	// Moves "a" towards "b" by "amount" and returns the result
	// Nice bcause it will not overshoot "b", and works in both directions
	// Examples:
	//      speed = Approach(speed, max_speed, acceleration);
	//      hp = Approach(hp, 0, damage_amount);
	//      hp = Approach(hp, max_hp, heal_amount);
	//      x = Approach(x, target_x, move_speed);
	//      y = Approach(y, target_y, move_speed);
 
	if (variable < approach)
	{
	    variable += ammount;
	    if (variable > approach)
	        return approach;
	}
	else
	{
	    variable -= ammount;
	    if (variable < approach)
	        return approach;
	}
	return variable;


}
