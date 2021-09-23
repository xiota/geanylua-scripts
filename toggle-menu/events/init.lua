-- load and initialize toggle_menu script
local lua_path = geany.appinfo().scriptdir..geany.dirsep

--[[
	start_action options:
		restore - startup with the last menu state
		*hide   - startup with menu hidden
		show    - startup with menu visible
		toggle  - startup with the menu toggled from the last menu state
--]]
start_action = "hide"

toggle_menu = loadfile(lua_path.."toggle-menu.lua")
toggle_menu()
