/// @description Insert description here
// You can write your code in this editor

ini_open("keybindings.ini")
	playmicrogames = ini_read_real("settings", "microgames", true)
ini_close()

if !playmicrogames room_goto(MainMenu)

else room_goto_next()
