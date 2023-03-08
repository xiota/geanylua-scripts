lua_path=geany.appinfo().scriptdir..geany.dirsep
dofile(lua_path.."toggle-functions.lua")
-- ---------------

if not editor_start then
  editor_toggle();
else
  local action_tbl =
  {
    ["hide"] = editor_hide,
    ["show"] = editor_show,
    ["restore"] = editor_restore,
    ["toggle"] = editor_toggle,
  }

  local func = action_tbl[editor_start]
  if (func) then
    func()
  end
end

update()
