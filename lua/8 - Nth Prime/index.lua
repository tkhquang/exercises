local function is_prime(n)
  -- Does not need to go higher than m = √n
  local m = math.sqrt(n)

  for i = 2, m + 1 do
    if n % i == 0 then
      return false
    end
  end

  return true
end

return function(n)
  assert(n > 0)

  local primes = { 2 }

  while #primes < n do
    local next_number = primes[#primes] + 1

    while not is_prime(next_number) do
      next_number = next_number + 1
    end

    table.insert(primes, next_number)
  end

  return primes[#primes]
end
