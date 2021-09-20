state_file = "/tmp/geany-menu-visible"

function get_menu_visible()
	local state_stat = geany.stat(state_file)
	if (state_stat) and (state_stat.type == "r") then
		-- file exists and is a regular file
		return true
	else
		return false
	end
end

function hide_menu()
	geany.signal("hbox_menubar", "hide")
	os.remove(state_file)
end

function show_menu()
	file = io.open(state_file, "w+")
	io.close(file)
	geany.signal("hbox_menubar", "show")
end

function update()
	geany.signal("vbox1", "style-updated")
	--geany.signal("notebook1", "style-updated")
	--geany.signal("notebook_info", "style-updated")
end

-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

visible = get_menu_visible()

if visible then
	hide_menu()
else
	show_menu()
end

update()
