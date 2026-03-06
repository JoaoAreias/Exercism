#include "doctor_data.h"

namespace heaven {

    Vessel Vessel::replicate(std::string name) {
        return Vessel(name, generation + 1, current_system);
    }
    
    void Vessel::make_buster(){
        busters += 1;
    }
    
    bool Vessel::shoot_buster(){
        if (busters == 0)
            return false;
    
        busters -= 1;
        return true;
    }
    
    std::string get_older_bob(Vessel v1, Vessel v2) {
        if (v2.generation < v1.generation)
            return v2.name;
        return v1.name;
    }
    
    bool in_the_same_system(Vessel v1, Vessel v2){
        return v1.current_system == v2.current_system;
    }
}