local DNA = {}

function DNA:new(input)
	local obj = {}
	obj.nucleotideCounts = {
    A = 0,
    T = 0,
    C = 0,
    G = 0
  }

  for i=1, #input do
    local key = input:sub(i,i)
		obj.nucleotideCounts[key] = obj.nucleotideCounts[key] + 1
	end

  function obj:count(x)
		return assert(obj.nucleotideCounts[x], "Invalid Nucleotide")
	end

  return obj
end

return DNA
