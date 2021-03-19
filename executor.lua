local core = require"core"
local function requirecoroutine(...)
  local t = {...}
  for i,v in pairs(t) do
    if not assert(loadfile(love.filesystem.getSource().."/"..v)) then
      error("\n there is an error loading "..v)
    end
    core.add(function()
    assert(loadfile(love.filesystem.getSource().."/"..v))()
  end)
  end
end
requirecoroutine(
  "fisica.lua"
)
