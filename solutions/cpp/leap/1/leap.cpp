#include "leap.h"

namespace leap {
    bool is_leap_year(int n){
        return (n % 400 == 0) || (n % 4 == 0 && n % 10 != 0);
    }
}  // namespace leap
