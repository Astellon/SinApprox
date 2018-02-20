#pragma once

#include <cstdint>

namespace approx {

using std::uint32_t;

class Phase {
 public:
  Phase();
  explicit Phase(uint32_t);
  explicit Phase(float);
  explicit Phase(double);
  ~Phase();

  double toDouble();
  float toFloat();

  uint32_t getRawValue();

  Phase& operator=(Phase& p);
  Phase& operator+=(Phase& p);
  Phase& operator-=(Phase& p);
  Phase& operator*=(Phase& p);
  Phase& operator/=(Phase& p);

 private:
  uint32_t phase_;

  const static uint32_t DOUBLE_PI = 0xffffffff;
  const static uint32_t PI = 0x8fffffff;
  const static uint32_t HALf_PI = 0x4fffffff;
};

Phase& operator+(Phase& p1, Phase& p2);
Phase& operator-(Phase& p1, Phase& p2);
Phase& operator*(Phase& p1, Phase& p2);
Phase& operator/(Phase& p1, Phase& p2);
}  // namespace approx