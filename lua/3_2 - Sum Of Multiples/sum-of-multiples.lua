return function(factors)
  return {
    to = function(limit)
      local sum = 0

      for number = 1, limit - 1 do
        for _, factor in ipairs(factors) do
          if (factor ~= 0 and number % factor == 0) then
            sum = sum + number

            break
          end
        end
      end

      return sum
    end
  }
end
