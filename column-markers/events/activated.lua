local lua_path = geany.appinfo().scriptdir..geany.dirsep

set_markers = loadfile(lua_path.."column-markers.lua")
set_markers()
