#pragma once

#include <cmath>

#include "phase.h"

namespace approx {

const double PI = 3.141592653589793;

namespace pade {
double sinZeroToHalfPi(double angle);
double sin(double angle);
double sin(Phase p);
}  // namespace pade

namespace table {
double sin(double angle);
double sin(Phase angle);
}  // namespace table

}  // namespace approx