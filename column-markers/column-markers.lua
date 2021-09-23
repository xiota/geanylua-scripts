--[[
   To set markers when documents are activated,
   use dofile or loadfile in events/activated.lua

      local lua_path = geany.appinfo().scriptdir..geany.dirsep
      set_markers = loadfile(lua_path.."column-markers.lua")
      set_markers()
--]]

geany.scintilla ("SCI_SETEDGEMODE", 3, 3)
geany.scintilla ("SCI_MULTIEDGECLEARALL", 0, 0)

-- Colors are in BGR order
geany.scintilla ("SCI_MULTIEDGEADDLINE", 60, 0xe5e5e5)
geany.scintilla ("SCI_MULTIEDGEADDLINE", 72, 0xf0c098) -- blue
geany.scintilla ("SCI_MULTIEDGEADDLINE", 80, 0xdd8add) -- purple
geany.scintilla ("SCI_MULTIEDGEADDLINE", 88, 0xe5e5e5)
geany.scintilla ("SCI_MULTIEDGEADDLINE", 96, 0x5161f6) -- red
geany.scintilla ("SCI_MULTIEDGEADDLINE", 104, 0xe5e5e5)
geany.scintilla ("SCI_MULTIEDGEADDLINE", 112, 0xe5e5e5)
geany.scintilla ("SCI_MULTIEDGEADDLINE", 120, 0xe5e5e5)
geany.scintilla ("SCI_MULTIEDGEADDLINE", 128, 0xe5e5e5)
geany.scintilla ("SCI_MULTIEDGEADDLINE", 136, 0xe5e5e5)
geany.scintilla ("SCI_MULTIEDGEADDLINE", 144, 0xe5e5e5)
geany.scintilla ("SCI_MULTIEDGEADDLINE", 152, 0xe5e5e5)
geany.scintilla ("SCI_MULTIEDGEADDLINE", 160, 0xe5e5e5)
