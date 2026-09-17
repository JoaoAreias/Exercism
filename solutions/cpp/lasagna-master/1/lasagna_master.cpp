#include "lasagna_master.h"
 
namespace lasagna_master {
    int preparationTime(const std::vector<std::string>& layers, int averageTime) {
        return averageTime * layers.size();
    }

    amount quantities(const std::vector<std::string>& layers) {
        amount needed(0, 0);
        for (std::string layer: layers) {
            if (layer == "sauce")
                needed.sauce += 0.2;

            if (layer == "noodles")
                needed.noodles += 50;
        }
        return needed;
    }

    void addSecretIngredient(std::vector<std::string>& myList, const std::vector<std::string>& friendsList) {
        myList.back() = friendsList.back();
    }

    std::vector<double> scaleRecipe(const std::vector<double>& quantities, int scale) {
        std::vector<double> scaled;
        scaled.reserve(quantities.size());
        for(double quantity: quantities) {
            scaled.push_back(scale * quantity / 2.);
        }
        return scaled;
    }

    void addSecretIngredient(std::vector<std::string>& myList, std::string secretIngredient) {
        myList.back() = secretIngredient;
    }

}  // namespace lasagna_master
