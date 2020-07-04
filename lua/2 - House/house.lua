local house = {}

local pairs = {
  {"house", "Jack built."},
  {"malt", "lay in"},
  {"rat", "ate"},
  {"cat", "killed"},
  {"dog", "worried"},
  {"cow with the crumpled horn", "tossed"},
  {"maiden all forlorn", "milked"},
  {"man all tattered and torn", "kissed"},
  {"priest all shaven and shorn", "married"},
  {"rooster that crowed in the morn", "woke"},
  {"farmer sowing his corn", "kept"},
  {"horse and the hound and the horn", "belonged to"},
}

house.verse = function(n)
  local verse = ""

  for i = n, 1, -1 do
    local noun, verb = unpack(pairs[i])
    local separator = i == 1 and " " or "\n"
    verse = verse .. " the " .. noun .. separator .. "that " .. verb
  end

  return "This is" .. verse
end

house.recite = function()
  local verses = {}
  for i = 1, #pairs do
    verses[i] = house.verse(i)
  end
  return table.concat(verses, '\n')
end

return house
