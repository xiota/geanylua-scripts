lua_path=geany.appinfo().scriptdir..geany.dirsep
dofile(lua_path.."switch-views"..geany.dirsep.."toggle-sidebar.lua")

editor_focus()
sidebar_focus()
