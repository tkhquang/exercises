local COLOR_BANDS = {
  black = 0,
  brown = 1,
  red = 2,
  orange = 3,
  yellow = 4,
  green = 5,
  blue = 6,
  violet = 7,
  grey = 8,
  white = 9
}

return {
  decode = function(c1, c2, c3)
    local res = (COLOR_BANDS[c1] * 10 + COLOR_BANDS[c2]) * 10 ^ COLOR_BANDS[c3]
    local unit

    if (res >= 1000) then
      unit = "kiloohms"
      res = res / 1000
    else
      unit = "ohms"
    end

    return res, unit
  end
}
