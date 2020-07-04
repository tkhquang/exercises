local Hamming = {}

function Hamming.compute(a,b)
  local result = 0

  if #a ~= #b then
    -- error("Sequence lengths are not equal!")
    result = -1
  else
    for i = 1, #a do
      if a:sub(i, i) ~= b:sub(i, i) then
        result = result + 1
      end
    end
  end

  return result
end

return Hamming
