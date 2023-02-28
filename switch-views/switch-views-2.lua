lua_path=geany.appinfo().scriptdir..geany.dirsep
dofile(lua_path.."toggle-functions.lua")

-- ---------------

-- editor <-> sidebar

if editor_is_visible() and sidebar_is_visible() then
  sidebar_hide()
elseif editor_is_visible() then
  sidebar_show()
  editor_hide()
elseif sidebar_is_visible() then
  editor_show()
  sidebar_hide()
else
  -- editor and sidebar both hidden
  editor_show()
end
