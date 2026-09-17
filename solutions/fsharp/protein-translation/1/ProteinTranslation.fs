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
    let rec mapProteins(sequence: string): string list= 
        let protein = translateCodon sequence.[..2]
        let n = sequence.Length
        match protein with
        | "STOP" -> []
        | _ -> 
            if n = 3 then [protein]
            elif n < 3 then []
            else [protein] @ mapProteins(sequence.[3..]) 
    
    rna |> mapProteins

