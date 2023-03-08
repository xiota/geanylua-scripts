lua_path=geany.appinfo().scriptdir..geany.dirsep
dofile(lua_path.."toggle-functions.lua")
-- ---------------

if not sidebar_start then
  sidebar_toggle();
else
  geany.status(sidebar_start)
  local action_tbl =
  {
    ["hide"] = sidebar_hide,
    ["show"] = sidebar_show,
    ["restore"] = sidebar_restore,
    ["toggle"] = sidebar_toggle,
  }

  local func = action_tbl[sidebar_start]
  if (func) then
    func()
  end
end

update()
