--[[
   To set markers when documents are activated,
   use dofile or loadfile in events/activated.lua

      local lua_path=geany.dirname(geany.script)..geany.dirsep..".."..geany.dirsep

      set_markers=loadfile(lua_path.."column-markers.lua")
      set_markers()
--]]

geany.scintilla ("SCI_SETEDGEMODE", 3, 3)
geany.scintilla ("SCI_MULTIEDGECLEARALL", 0, 0)

-- Colors are in BGR order
geany.scintilla ("SCI_MULTIEDGEADDLINE", 72, 0xf0c098)
geany.scintilla ("SCI_MULTIEDGEADDLINE", 80, 0xdd8add)
geany.scintilla ("SCI_MULTIEDGEADDLINE", 96, 0x5161f6)
