namespace RnaTranscription

def mapNucleotide(n: Char) : Char :=
  match n with
  | 'G' => 'C'
  | 'C'=> 'G'
  | 'T' => 'A'
  | 'A' => 'U'
  | _ => '_'


def toRna (dna : String) : String :=
  dna.map mapNucleotide

end RnaTranscription
