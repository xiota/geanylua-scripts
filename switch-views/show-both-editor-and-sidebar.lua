lua_path=geany.appinfo().scriptdir..geany.dirsep
dofile(lua_path.."switch-views"..geany.dirsep.."show-editor-sidebar.lua")

editor_focus()
