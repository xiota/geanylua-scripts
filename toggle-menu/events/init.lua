-- load and run script to hide menubar on start
local lua_path=geany.dirname(geany.script)..geany.dirsep..".."..geany.dirsep

toggle_menu=loadfile(lua_path.."toggle-menu.lua")
toggle_menu()
