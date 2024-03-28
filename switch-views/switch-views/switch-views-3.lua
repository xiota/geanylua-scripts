lua_path=geany.appinfo().scriptdir..geany.dirsep
dofile(lua_path.."toggle-functions.lua")
-- ---------------

-- editor -> editor+sidebar -> sidebar

if editor_is_visible() and sidebar_is_visible() then
  -- both => sidebar
  editor_hide()
  sidebar_focus()
elseif editor_is_visible() then
  -- editor -> both
  sidebar_show()
  editor_focus()
elseif sidebar_is_visible() then
  -- sidebar -> editor
  editor_show()
  sidebar_hide()
  editor_focus()
else
  -- none -> both
  editor_show()
  sidebar_show()
  editor_focus()
end

update()
