lua_path=geany.appinfo().scriptdir..geany.dirsep
dofile(lua_path.."toggle-functions.lua")
-- ---------------

editor_show()
sidebar_show()
update()

editor_focus()
