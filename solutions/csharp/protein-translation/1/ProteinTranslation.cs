using System;
using System.Collections.Generic;

public static class ProteinTranslation
{
    public static string[] Proteins(string strand)
    {
        var translated = new string[strand.Length / 3];
        var translate = new Dictionary<string, string> {
            // Add Methionine
            {"AUG", "Methionine"},
            // Add Phenylalanine
            {"UUU", "Phenylalanine"}, {"UUC", "Phenylalanine"},
            // Add Leucine
            {"UUA", "Leucine"}, {"UUG", "Leucine"},
            // Add Serine
            {"UCU", "Serine"}, {"UCC", "Serine"}, {"UCA", "Serine"}, {"UCG", "Serine"},
            // Add Tyrosine
            {"UAU", "Tyrosine"}, {"UAC", "Tyrosine"},
            // Add Cysteine
            {"UGU", "Cysteine"}, {"UGC", "Cysteine"},
            // Add Tryptophan
            {"UGG", "Tryptophan"},
            // Add STOP codons
            {"UAA", "STOP"}, {"UAG", "STOP"}, {"UGA", "STOP"}
        };
        
        for (int i = 0; i < strand.Length; i += 3) {
            if (translate[strand[i..(i+3)]] == "STOP") {
                Array.Resize(ref translated, i/3);
                return translated;
            }
            translated[i/3] = translate[strand[i..(i+3)]];
        }

        return translated;
    }
}