local lua_path = geany.appinfo().scriptdir..geany.dirsep..".."

os.execute("xdg-open "..'"'..lua_path..'"')
