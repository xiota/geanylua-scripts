editor_state=lua_path.."toggle_editor-hidden"
sidebar_state=lua_path.."toggle_sidebar-hidden"

function editor_is_visible()
  local state_stat = geany.stat(editor_state)
  if (state_stat) and (state_stat.type == "r") then
    return false
  else
    return true
  end
end

function sidebar_is_visible()
  local state_stat = geany.stat(sidebar_state)
  if (state_stat) and (state_stat.type == "r") then
    return false
  else
    return true
  end
end

function editor_focus()
  if editor_is_visible() then
    geany.keycmd("FOCUS_EDITOR")
  end
end

function editor_hide()
  if not sidebar_is_visible() then
    sidebar_show()
  end

  file = io.open(editor_state, "w+")
  io.close(file)
  geany.signal("notebook1", "hide")
  geany.yield()
end

function editor_show()
  geany.signal("notebook1", "show")
  geany.yield()
  os.remove(editor_state)
end

function editor_hide_stateless()
  if not sidebar_is_visible() then
    sidebar_show_stateless()
  end

  geany.signal("notebook1", "hide")
  geany.yield()
end

function editor_show_stateless()
  geany.signal("notebook1", "show")
  geany.yield()
end

function editor_restore()
  if editor_is_visible() then
    editor_show()
  else
    editor_hide()
  end
end

function editor_toggle()
  if editor_is_visible() then
    editor_hide()
  else
    editor_show()
  end
end

function sidebar_focus()
  if sidebar_is_visible() then
    geany.keycmd("FOCUS_SIDEBAR")
  end
end

function sidebar_hide()
  if not editor_is_visible() then
    editor_show()
  end

  file = io.open(sidebar_state, "w+")
  io.close(file)
  geany.signal("notebook3", "hide")
  geany.yield()
end

function sidebar_show()
  geany.signal("notebook3", "show")
  geany.yield()
  os.remove(sidebar_state)
end

function sidebar_hide_stateless()
  if not editor_is_visible() then
    editor_show_stateless()
  end

  geany.signal("notebook3", "hide")
  geany.yield()
end

function sidebar_show_stateless()
  geany.signal("notebook3", "show")
  geany.yield()
end

function sidebar_restore()
  if sidebar_is_visible() then
    sidebar_show()
  else
    sidebar_hide()
  end
end

function sidebar_toggle()
  if sidebar_is_visible() then
    sidebar_hide()
  else
    sidebar_show()
  end
end

function update()
  geany.signal("hpaned1", "style-updated")
  geany.yield()
end
