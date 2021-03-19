local wait = require("core").wait
local cube = require"module"
local vector2 = require"Vector2"
local grap = love.graphics
local obj = cube.new()
local function chage(p)
  obj.position.y = obj.position.y + p
end
local dt = love.timer.getDelta()
local grav = 9,807
local vel  = 0
obj.position = vector2.new(grap.getWidth()/2-50,grap.getHeight()/5)
local function update()
  vel = vel + grav * dt
  chage(vel)
end
while true do 
  dt = love.timer.getDelta()
  update()
  obj:draw()
  wait()
end
