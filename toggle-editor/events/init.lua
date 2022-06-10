-- load and initialize toggle_editor script
local lua_path = geany.appinfo().scriptdir..geany.dirsep

--[[
	start_action options:
		restore - startup with the last editor state
		hide   - startup with editor hidden
		*show    - startup with editor visible
		toggle  - startup with the editor toggled from the last editor state
--]]
start_action = "show"

toggle_editor = loadfile(lua_path.."toggle-editor.lua")
toggle_editor()
