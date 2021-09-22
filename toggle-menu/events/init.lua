-- load and initialize toggle_menu script
local lua_path=geany.dirname(geany.script)..geany.dirsep..".."..geany.dirsep

toggle_menu=loadfile(lua_path.."toggle-menu.lua")
toggle_menu()

-- to start with the menu hidden, run toggle_menu() twice
-- by uncommenting the following line:
-- toggle_menu()
