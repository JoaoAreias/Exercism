#include "protein_translation.h"

namespace protein_translation {
    
    std::string_view getCodonFromRNA(std::string_view rna, int index) {
        return std::string_view(&rna[3 * index], 3); 
    }
    
    std::vector<std::string> proteins(std::string rna) {
        std::map<std::string_view, std::string> codonToProtein = {
            {"AUG", "Methionine"},
            {"UUU", "Phenylalanine"}, {"UUC", "Phenylalanine"},
            {"UUA", "Leucine"}, {"UUG", "Leucine"},
            {"UCU", "Serine"}, {"UCC", "Serine"}, {"UCA", "Serine"}, {"UCG", "Serine"},
            {"UAU", "Tyrosine"}, {"UAC", "Tyrosine"},
            {"UGU", "Cysteine"}, {"UGC", "Cysteine"},
            {"UGG", "Tryptophan"},
            {"UAA", "STOP"}, {"UAG", "STOP"}, {"UGA", "STOP"}
        };

        std::vector<std::string> proteins;
        for (long unsigned int i = 0; i < rna.size() / 3; i++) {
            std::string_view sv = getCodonFromRNA(rna, i);
            std::string protein = codonToProtein[sv];
            
            if (protein == "STOP")
                break;

            proteins.push_back(protein);
        }
        
        return proteins;
    }

}  // namespace protein_translation
