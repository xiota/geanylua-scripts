lua_path=geany.appinfo().scriptdir..geany.dirsep
dofile(lua_path.."switch-views"..geany.dirsep.."toggle-editor.lua")

sidebar_focus()
editor_focus()
