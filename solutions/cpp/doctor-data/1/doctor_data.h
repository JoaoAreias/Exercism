#pragma once
#include <string>

namespace star_map {
    enum class System{
        BetaHydri,
        EpsilonEridani,
        Sol,
        DeltaEridani,
        Omicron2Eridani,
        AlphaCentauri
    };
}

namespace heaven {
    class Vessel{
        public:
            Vessel(std::string name, int generation, star_map::System system = star_map::System::Sol) : generation(generation), busters(0) {
                this->name = name;
                this->current_system = system;
            };
            Vessel replicate(std::string name);
            void make_buster();
            bool shoot_buster();        
            
            star_map::System current_system;
            int generation;
            int busters;
            std::string name;
    };
    std::string get_older_bob(Vessel v1, Vessel v2);
    bool in_the_same_system(Vessel v1, Vessel v2);
}

