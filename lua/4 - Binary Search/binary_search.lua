return function(array, target)
  if #array == 0 then
    return -1
  end

  local left = 1
  local right = #array

  repeat
    local mid = math.floor((left + right) / 2)
    local mid_item = array[mid]

    if target == mid_item then
      return mid
    elseif target < mid_item then
      right = mid - 1
    elseif target > mid_item then
      left = mid + 1
    end
  until left > right

  return -1
end
