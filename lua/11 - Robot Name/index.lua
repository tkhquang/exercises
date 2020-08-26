local Robot = {}
Robot.__index = Robot

local usedNames = {}

local function generateRandomName()
  local a = ("A"):byte()

  return tostring(a + math.random(0, 25)):char()
    .. tostring(a + math.random(0, 25)):char()
    .. tostring(math.random(0, 9))
    .. tostring(math.random(0, 9))
    .. tostring(math.random(0, 9))
end

local function getName()
  local new = ""

  repeat
    new = generateRandomName()
  until not usedNames[new]

  usedNames[new] = true
  return new
end

function Robot:new()
  return setmetatable({
    name = getName()
  }, self)
end

function Robot:reset()
  self.name = getName()
end

return Robot
