local transcription = {
  ['G'] = 'C',
  ['C'] = 'G',
  ['T'] = 'A',
  ['A'] = 'U',
}

return function(dna)
  local rna = dna

  for i = 1, #dna do
    local nucleotide = dna:sub(i, i)
    rna = rna:sub(1, i - 1)..transcription[nucleotide]..rna:sub(i + 1)
  end

  return rna
end
