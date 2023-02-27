local lua_path = geany.appinfo().scriptdir..geany.dirsep

auto_sidebar = loadfile(lua_path.."auto-sidebar.lua")
auto_sidebar()
