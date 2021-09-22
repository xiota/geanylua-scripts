lua_path=geany.appinfo().scriptdir..geany.dirsep
state_file=lua_path.."toggle_menu-hidden"

function is_menu_visible()
	local state_stat = geany.stat(state_file)
	if (state_stat) and (state_stat.type == "r") then
		return false
	else
		return true
	end
end

function hide_menu()
	file = io.open(state_file, "w+")
	io.close(file)
	geany.signal("hbox_menubar", "hide")
	update()
end

function show_menu()
	geany.signal("hbox_menubar", "show")
	os.remove(state_file)
	update()
end

function update()
	geany.signal("vbox1", "style-updated")
end

function init()
	if is_menu_visible() then
		show_menu()
	else
		hide_menu()
	end

	initialize = false
end

function toggle()
	if is_menu_visible() then
		hide_menu()
	else
		show_menu()
	end
end

if initialize then
	init()
else
	toggle()
end
