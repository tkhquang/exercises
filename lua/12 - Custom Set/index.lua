local Set = {}
Set.__index = Set

function Set:new(...)
  local set = {}
  setmetatable(set, self)

  for _, v in ipairs({...}) do
    set:add(v)
  end

  return set
end

function Set:is_empty()
  for _ in pairs(self) do
    return false
  end
  return true
end

function Set:contains(elem)
  return self[elem] ~= nil
end

function Set:add(elem)
  self[elem] = true
end

function Set:elems()
  return pairs(self)
end

function Set:is_subset(other)
  for v in self:elems() do
    if not other:contains(v) then
      return false
    end
  end

  return true
end

function Set:is_disjoint(other)
  for v in self:elems() do
    if other:contains(v) then
      return false
    end
  end

  return true
end

function Set:equals(other)
  return self:is_subset(other) and other:is_subset(self)
end

function Set:intersection(other)
  local intersection = Set:new()

  for v in self:elems() do
    if other:contains(v) then
      intersection:add(v)
    end
  end

  return intersection
end

function Set:difference(other)
  local diff = Set:new()

  for v in self:elems() do
    if not other:contains(v) then
      diff:add(v)
    end
  end

  return diff
end

function Set:union(other)
  local union = Set:new()

  for v in self:elems() do
    union:add(v)
  end

  for v in other:elems() do
    union:add(v)
  end

  return union
end

return function(...)
  return Set:new(...)
end
