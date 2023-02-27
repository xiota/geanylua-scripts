--[[
  Show/Hide sidebar based on file types in action_tbl
--]]

lua_path=geany.appinfo().scriptdir..geany.dirsep
dofile(lua_path.."toggle-functions.lua")

-- ----------

local action_tbl =
{
  ["HTML"] = sidebar_show,
  ["Markdown"] = sidebar_show,
}

infotable = geany.fileinfo()

local func = action_tbl[infotable["type"]]
if (func) then
  func()
else
  sidebar_hide()
end

-- uncomment the following line to show the filetype in the status window
-- geany.status(infotable["type"])
