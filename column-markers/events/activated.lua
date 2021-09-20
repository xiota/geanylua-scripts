local lua_path=geany.dirname(geany.script)..geany.dirsep..".."..geany.dirsep

set_markers=loadfile(lua_path.."column-markers.lua")
set_markers()
