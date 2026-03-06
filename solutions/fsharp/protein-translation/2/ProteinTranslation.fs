module ProteinTranslation

let translateCodon codon =
    match codon with
    | "AUG" -> "Methionine"
    | "UUU" | "UUC" -> "Phenylalanine"
    | "UUA" | "UUG" -> "Leucine"
    | "UCU" | "UCC" | "UCA" | "UCG" -> "Serine"
    | "UAU" | "UAC" -> "Tyrosine"
    | "UGU" | "UGC" -> "Cysteine"
    | "UGG" -> "Tryptophan"
    | "UAA" | "UAG" | "UGA" -> "STOP"
    | _ -> "Unknown"


let proteins rna = 
    Seq.chunkBySize 3 rna
    |> Seq.map(System.String >> translateCodon)
    |> Seq.takeWhile((<>) "STOP")
    |> Seq.toList
