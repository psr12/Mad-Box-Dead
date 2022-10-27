// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_pausetextcheck(optionnumber){

	if optionnumber == pause_menu_select
	{
		alpha = 1;
		color = c_white;
	}
	else
	{
		alpha = 0.8;
		color = c_gray;
	}
	
	textdrawy += 100;
	
}