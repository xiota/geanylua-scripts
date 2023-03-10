lua_path=geany.appinfo().scriptdir..geany.dirsep
dofile(lua_path.."toggle-functions.lua")
-- ---------------

geany.signal("notebook3", "grab-focus")
