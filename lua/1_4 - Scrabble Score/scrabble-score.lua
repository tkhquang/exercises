local scores = {
  [{ 'a', 'e', 'i', 'o', 'u', 'l', 'n', 'r', 's', 't' }] = 1,
  [{ 'd', 'g' }] = 2,
  [{ 'b', 'c', 'm', 'p' }] = 3,
  [{ 'f', 'h', 'v', 'w', 'y' }] = 4,
  [{ 'k' }] = 5,
  [{ 'j', 'x' }] = 8,
  [{ 'q', 'z' }] = 10
}

local function get_score(word)
  word = (word or ""):lower()

  local score = 0

  for i = 1, #word do
    local current_char = word:sub(i, i)

    for letters, point in pairs(scores) do
      for _, letter in ipairs(letters) do
        if letter == current_char then
          score = score + point
        end
      end
    end
  end

  return score
end

return { score = get_score }
