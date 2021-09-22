lua_path=geany.appinfo().scriptdir..geany.dirsep
state_file=lua_path.."toggle_menu-hidden"

function is_visible()
	local state_stat = geany.stat(state_file)
	if (state_stat) and (state_stat.type == "r") then
		return false
	else
		return true
	end
end

function hide()
	file = io.open(state_file, "w+")
	io.close(file)
	geany.signal("hbox_menubar", "hide")
	update()
end

function show()
	geany.signal("hbox_menubar", "show")
	os.remove(state_file)
	update()
end

function update()
	geany.signal("vbox1", "style-updated")
end

function startup()
	if is_visible() then
		show()
	else
		hide()
	end
end

function toggle()
	if is_visible() then
		hide()
	else
		show()
	end
end

-- ---------------

if not action then
	toggle();
else
	local action_tbl =
	{
	  ["hide"] = hide,
	  ["show"] = show,
	  ["startup"] = startup,
	  ["toggle"] = toggle,
	}

	local func = action_tbl[action]
	if (func) then
		func()
	end
end
