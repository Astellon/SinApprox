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

  double toDouble() const;
  float toFloat()const;

  uint32_t getRawValue() const;

  Phase& operator=(const Phase& p);
  Phase& operator+=(const Phase& p);
  Phase& operator-=(const Phase& p);
  Phase& operator*=(const Phase& p);
  Phase& operator/=(const Phase& p);

  static const uint32_t DOUBLE_PI = 0xffffffff;
  static const uint32_t PI = 0x8fffffff;
  static const uint32_t HALf_PI = 0x4fffffff;

 private:
  uint32_t phase_;
};

Phase& operator+(const Phase& p1, const Phase& p2);
Phase& operator-(const Phase& p1, const Phase& p2);
Phase& operator*(const Phase& p1, const Phase& p2);
Phase& operator/(const Phase& p1, const Phase& p2);
}  // namespace approx