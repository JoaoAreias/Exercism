#include "raindrops.h"
#include <string>

namespace raindrops {
    std::string convert(int number) {
        std::string converted = "";
        if (number % 3 == 0)
            converted += "Pling";
        
        if (number % 5 == 0)
            converted += "Plang";
        
        if (number % 7 == 0)
            converted += "Plong";

        return (converted.size() > 0 ? converted : std::to_string(number));
    }
}  // namespace raindrops
