/// @description detect monsters



for (var i = 0; i < instance_number(UT_PAR_ENEMY); i++)
{
	
var targ = instance_find(UT_PAR_ENEMY, i)	
ds_list_add(monster_list, targ)

}
