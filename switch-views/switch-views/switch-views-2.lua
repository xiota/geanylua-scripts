lua_path=geany.appinfo().scriptdir..geany.dirsep
dofile(lua_path.."toggle-functions.lua")
-- ---------------

-- editor <-> sidebar

if editor_is_visible() and sidebar_is_visible() then
  sidebar_hide()
  editor_focus()
elseif editor_is_visible() then
  sidebar_show()
  editor_hide()
  sidebar_focus()
elseif sidebar_is_visible() then
  editor_show()
  sidebar_hide()
  editor_focus()
else
  -- editor and sidebar both hidden
  editor_show()
  editor_focus()
end

update()
