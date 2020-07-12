return function (matrix)
  local rows = {}
  local columns = {}

  for line in matrix:gmatch("([^\n]*)\n?") do
    local row = {}

    for el in line:gmatch("%S+") do
      table.insert(row, tonumber(el))
    end

    table.insert(rows, row)
  end

  for col_nth, _ in pairs(rows[1]) do
    local column = {}

    for _, row in pairs(rows) do
      table.insert(column, row[col_nth])
    end

    table.insert(columns, column)
  end

  return {
    row = function (nth)
      return rows[nth]
    end,

    column = function (nth)
      return columns[nth]
    end
  }
end
