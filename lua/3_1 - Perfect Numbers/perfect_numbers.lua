local function aliquot_sum(target)
  local sum = 0

  for number = 1, target // 2 do
    if target % number == 0 then
      sum = sum + number
    end
  end

  return sum
end

local function classify(target)
  local sum = aliquot_sum(target)

  if sum == target then
    return "perfect"
  elseif sum > target then
    return "abundant"
  else
    return "deficient"
  end
end

return {
  aliquot_sum = aliquot_sum,
  classify = classify
}
