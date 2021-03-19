function love.load()
  core = require"core"
  dofile(love.filesystem.getSource().."/executor.lua")
  --print(dofile(love.filesystem.getSource().."/fisica.lua"))
end
function love.draw()
  core.run()
end
