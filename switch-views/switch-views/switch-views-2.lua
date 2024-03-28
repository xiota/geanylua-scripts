lua_path=geany.appinfo().scriptdir..geany.dirsep
dofile(lua_path.."toggle-functions.lua")
-- ---------------

-- editor <-> sidebar

if editor_is_visible() and sidebar_is_visible() then
  -- both -> editor
  sidebar_hide()
  editor_focus()
elseif editor_is_visible() then
  -- editor -> sidebar
  sidebar_show()
  editor_hide()
  sidebar_focus()
elseif sidebar_is_visible() then
  -- sidebar -> editor
  editor_show()
  sidebar_hide()
  editor_focus()
else
  -- none -> editor
  editor_show()
  editor_focus()
end

update()
