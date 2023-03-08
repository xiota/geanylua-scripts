lua_path=geany.appinfo().scriptdir..geany.dirsep
dofile(lua_path.."toggle-functions.lua")
-- ---------------

-- editor -> editor+sidebar -> sidebar

if editor_is_visible() and sidebar_is_visible() then
  editor_hide()
elseif editor_is_visible() then
  sidebar_show()
elseif sidebar_is_visible() then
  editor_show()
  sidebar_hide()
else
  editor_show()
  sidebar_show()
end

update()
