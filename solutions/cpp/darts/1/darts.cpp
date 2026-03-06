#include "darts.h"
#include <cmath>

namespace darts {
    int score(double x, double y) {
        double r = sqrt(x*x + y*y);

        if (r > 10)
            return 0;
        else if (r > 5)
            return 1;
        else if (r > 1)
            return 5;
        else
            return 10;
    }
} // namespace darts