return {
  encode = function(str)
    for c in str:gmatch(".") do
      str = str:gsub(c:rep(2) .. "+",
        function (match)
          return tostring(#match) .. c
        end
      )
    end

    return str
  end,

  decode = function (str)
    return str:gsub("(%d+)(.)",
      function (n, c)
        return c:rep(n)
      end
    )
  end
}
