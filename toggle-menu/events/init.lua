-- load and initialize toggle_menu script
local lua_path = geany.appinfo().scriptdir..geany.dirsep..geany.dirsep

-- action options: startup, hide, show, toggle
action = "startup"

toggle_menu=loadfile(lua_path.."toggle-menu.lua")
toggle_menu()
