#include <cmath>

template<int N>
struct SinTable {
  const double pi = 3.141592653589793;
  double table[N+1];

  constexpr SinTable() : table() {
    for (int i = 0; i < N; i++) table[i] = std::sin(i * pi / 2 / N);
    table[N] = 1.0;
  }

  double get(std::size_t i) const {
    return table[i];
  }
};
