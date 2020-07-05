local codon_to_protein = {
  AUG = 'Methionine',
  UUC = 'Phenylalanine',
  UUU = 'Phenylalanine',
  UUA = 'Leucine',
  UUG = 'Leucine',
  UCU = 'Serine',
  UCC = 'Serine',
  UCA = 'Serine',
  UCG = 'Serine',
  UAU = 'Tyrosine',
  UAC = 'Tyrosine',
  UGU = 'Cysteine',
  UGC = 'Cysteine',
  UGG = 'Tryptophan',
  UAA = 'STOP',
  UAG = 'STOP',
  UGA = 'STOP'
}

local function splitByChunk(text, chunkSize)
  local s = {}

  for i = 1, #text, chunkSize do
      s[#s + 1] = text:sub(i, i + chunkSize - 1)
  end

  return s
end

local function translate_codon(codon)
  local protein = codon_to_protein[codon]

  if (protein == nil) then
    error("Unknown codon!")
  end

  return protein
end

local function translate_rna_strand(rna_strand)
  local result = {}
  local st = splitByChunk(rna_strand, 3)

  for i, v in ipairs(st) do
    if (translate_codon(v) == "STOP") then
      break;
    end

    result[i] = translate_codon(v)
  end

  return result
end

return {
  codon = translate_codon,
  rna_strand = translate_rna_strand
}
