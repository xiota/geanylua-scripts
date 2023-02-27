-- load and initialize toggle_editor and toggle_sidebar scripts
local lua_path = geany.appinfo().scriptdir..geany.dirsep

--[[
  options:
    restore - startup with the last editor state
    hide   - startup with editor hidden
    *show    - startup with editor visible
    toggle  - startup with the editor toggled from the last editor state
--]]

editor_start = "show"
sidebar_start = "show"

toggle_editor = loadfile(lua_path.."toggle-editor.lua")
toggle_editor()

toggle_sidebar = loadfile(lua_path.."toggle-sidebar.lua")
toggle_sidebar()
