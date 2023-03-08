lua_path=geany.appinfo().scriptdir..geany.dirsep
dofile(lua_path.."toggle-functions.lua")
-- ---------------

if not start_action then
  editor_toggle();
else
  local action_tbl =
  {
    ["hide"] = editor_hide,
    ["show"] = editor_show,
    ["restore"] = editor_restore,
    ["toggle"] = editor_toggle,
  }

  local func = action_tbl[start_action]
  if (func) then
    func()
  end
end

update()
