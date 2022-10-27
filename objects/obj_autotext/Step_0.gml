/// @description Insert description here
// You can write your code in this editor

introscale = Approach(introscale, 1, 0.1);
textminusbars = string_replace_all(text, "|", "")
var totallength = string_length(textminusbars)

if show < totallength //advance text, text isn't finished and not waiting on |||||
{
	show += spd;
			show+= 0.001; // it doesn't like fractions, this is to prevent it rounding down or w/e

	if string_char_at(text, show) == "|"{
		var fail = show; if fail <1 fail = 1; //breaks of show < 1, index starts at 1
		text = string_delete(text, fail, 1)
		show-= spd;
	}
	showtext = string_copy(text, 0, show )
}
else wait--; //only countdown if finished writing

if wait <= 0 { //cycle text
	show = 0;
	wait = fullwait;
	introscale = 2;
	
	onlist++;
	onlist = Wrap(onlist, 0, array_length(textlist)-1 );
	showtext = "";
	text = textlist[onlist];
}
