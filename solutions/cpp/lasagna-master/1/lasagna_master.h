#pragma once
#include <vector>
#include <string>

namespace lasagna_master {

struct amount {
    int noodles;
    double sauce;

    amount(int noodles, double sauce): noodles(noodles), sauce(sauce) {}
};

    int preparationTime(const std::vector<std::string>& layers, int averageTime = 2);
    amount quantities(const std::vector<std::string>& layers);
    void addSecretIngredient(std::vector<std::string>& myList, const std::vector<std::string>& friendsList);
    std::vector<double> scaleRecipe(const std::vector<double>& quantities, int scale);
    void addSecretIngredient(std::vector<std::string>& myList, std::string secretIngredient);
}  // namespace lasagna_master
