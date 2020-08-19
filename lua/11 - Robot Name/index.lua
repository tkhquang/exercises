local function getName()
  local a = ("A"):byte()

  return tostring(a + math.random(0, 25)):char()
    .. tostring(a + math.random(0, 25)):char()
    .. tostring(math.random(0, 9))
    .. tostring(math.random(0, 9))
    .. tostring(math.random(0, 9))
end

local Robot = {}

function Robot:new()
  local robot = {
    name = getName(),
    reset = function(self)
      self.name = getName()
    end
  }

  return robot
end

return Robot
