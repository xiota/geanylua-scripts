--[[
  Show/Hide sidebar based on file types in action_tbl
--]]

function hide_sidebar()
	geany.signal("notebook3", "hide")
  update()
end

function show_sidebar()
	geany.signal("notebook3", "show")
  update()
end

function update()
  geany.signal("notebook1", "style-updated")
end

-- ----------

local action_tbl =
{
  ["HTML"] = show_sidebar,
  ["Markdown"] = show_sidebar,
}

infotable = geany.fileinfo()

local func = action_tbl[infotable["type"]]
if (func) then
  func()
else
  hide_sidebar()
end

-- uncomment the following line to show the filetype in the status window
-- geany.status(infotable["type"])
