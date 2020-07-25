return function(letter)
  local size = (letter:byte() - (("A"):byte() - 1)) * 2 - 1
  local mid = size // 2 + 1
  local diamond = ""

  for i = 1, size do
    for j = 1, size do
      local n = i

      if n > mid then
        n = size - i + 1
      end

      if math.abs(mid - j) + 1 == n then
        diamond = diamond .. tostring(n + 64):char()
      else
        diamond = diamond .. " "
      end
    end

    diamond = diamond .. "\n"
  end

  return diamond
end
