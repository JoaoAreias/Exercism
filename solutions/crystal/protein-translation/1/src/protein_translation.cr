module ProteinTranslation
  @@mapping = {
    "AUG" => "Methionine",
    "UUU" => "Phenylalanine", "UUC" => "Phenylalanine",
    "UUA" => "Leucine", "UUG" => "Leucine",
    "UCU" => "Serine", "UCC" => "Serine", "UCA" => "Serine", "UCG" => "Serine",
    "UAU" => "Tyrosine", "UAC" => "Tyrosine",
    "UGU" => "Cysteine", "UGC" => "Cysteine",
    "UGG" => "Tryptophan",
    "UAA" => "STOP", "UAG" => "STOP", "UGA" => "STOP"
  }

  def self.proteins(strand : String) : Array(String)
    # Write your code for the 'Protein Translation' exercise in this file.
    strand.chars.each_slice(3).map do |codon|
      @@mapping.fetch(codon.join) { raise ArgumentError.new("Invalid codon") }
    end.take_while do |protein| 
      protein != "STOP"
    end.to_a
  end
end
