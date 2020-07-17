return function(string)
  local letters = {}

  for c in string:lower():gmatch("[a-z]") do
    if letters[c] then
      return false
    else
      letters[c] = true
    end
  end

  return true
end
