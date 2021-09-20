-- show menubar and remove state_file

geany.signal("hbox_menubar", "show")

state_file = "/tmp/geany-menu-visible"
state = geany.stat(state_file)

if (state) and (state.type == "r") then
	-- it exists and  it's a regular file
	os.remove(state_file)
end
