return {
  new = function()
    local is_open = true
    local total = 0

    return {
      balance = function()
        return total
      end,

      close = function()
        is_open = false
      end,

      deposit = function(_, amount)
        assert(is_open and amount > 0)
        total = total + amount
      end,

      withdraw = function(_, amount)
        assert(is_open and amount > 0 and total - amount >= 0)
        total = total - amount
      end
    }
  end
}
