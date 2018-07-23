#include <cmath>
#include <chrono>
#include <iostream>

#include "sin.h"
#include "timer.h"

int main() {
  using MS = std::chrono::milliseconds;
  using NS = std::chrono::nanoseconds;

  const double freq = 440.0;
  const double sample_rate = 44100.0;
  const int buffer_size = 256;
  const int repeat = 10000;

  volatile double sample = 0.0;
  double err_pade = 0.0;
  double err_table = 0.0;
  double err_table_d = 0.0;
  double angle = 0.0;
  approx::Phase phase;
  double angle_delta = freq * 2 * approx::PI / sample_rate;
  approx::Phase phase_delta(angle_delta);

  for (int rep = 0; rep < repeat; rep++) {
    for (int i = 0; i < buffer_size; i++) {
      sample = std::sin(phase.toDouble());

      double dif_pade = sample - approx::pade::sin(angle);
      double dif_table = sample - approx::table::sin(angle);
      double dif_table_inter = sample - approx::table::sin(angle);
      // mean squared error
      err_pade += dif_pade * dif_pade;
      err_table += dif_table * dif_table;
      err_table_d += dif_table_inter * dif_table_inter;

      angle += angle_delta;
      if (angle > 2*approx::PI) angle -= 2*approx::PI;
      sample = 0;
    }
  }

  std::cout << "error (root mean square)" << std::endl;
  std::cout << " error of table (uint32) : " << sqrt(err_table/repeat/buffer_size) << std::endl;
  std::cout << " error of table (double) : " << sqrt(err_table_d/repeat/buffer_size) << std::endl;
  std::cout << " error of pade           : " << sqrt(err_pade/repeat/buffer_size) << std::endl;
  std::cout << std::endl;

  // Phase + std::sin
  int time = 0;
  {
    Timer<NS> T(&time);
    for (int rep = 0; rep < repeat; rep++) {
      for (int i = 0; i < buffer_size; i++) {
        sample = std::sin(phase.toDouble());
        phase += phase_delta;
      }
    }
  }
  std::cout << "Phase + std::sin : " << time << std::endl;

  // double + std::sin
  {
    Timer<NS> T(&time);
    for (int rep = 0; rep < repeat; rep++) {
      for (int i = 0; i < buffer_size; i++) {
        sample = std::sin(angle);
        angle += angle_delta;
        if (angle > 2*approx::PI) angle -= 2*approx::PI;
      }
    }
  }
  std::cout << "double + std::sin : " << time << std::endl;

  // Phase + pade::sin
  {
    Timer<NS> T(&time);
    for (int rep = 0; rep < repeat; rep++) {
      for (int i = 0; i < buffer_size; i++) {
        sample = approx::pade::sin(phase);
        phase += phase_delta;
      }
    }
  }
  std::cout << "Phase + pade::sin : " << time << std::endl;

  // double + pade::sin
  {
    Timer<NS> T(&time);
    for (int rep = 0; rep < repeat; rep++) {
      for (int i = 0; i < buffer_size; i++) {
        sample = approx::pade::sin(angle);
        angle += angle_delta;
        if (angle > 2*approx::PI) angle -= 2*approx::PI;
      }
    }
  }
  std::cout << "double + pade::sin : " << time << std::endl;

  // Phase + table::sin
  {
    Timer<NS> T(&time);
    for (int rep = 0; rep < repeat; rep++) {
      for (int i = 0; i < buffer_size; i++) {
        sample = approx::table::sin(phase);
        phase += phase_delta;
      }
    }
  }
  std::cout << "Phase + table::sin : " << time << std::endl;

  // double + table::sin
  {
    Timer<NS> T(&time);
    for (int rep = 0; rep < repeat; rep++) {
      for (int i = 0; i < buffer_size; i++) {
        sample = approx::table::sin(angle);
        angle += angle_delta;
        if (angle > 2*approx::PI) angle -= 2*approx::PI;
      }
    }
  }
  std::cout << "double + table::sin : " << time << std::endl;

  // Phase + compiletime_table::sin
  {
    Timer<NS> T(&time);
    for (int rep = 0; rep < repeat; rep++) {
      for (int i = 0; i < buffer_size; i++) {
        sample = approx::compiletime_table::sin(phase);
        phase += phase_delta;
      }
    }
  }
  std::cout << "Phase + compiletime_table::sin : " << time << std::endl;

  // double + compiletime_table::sin
  {
    Timer<NS> T(&time);
    for (int rep = 0; rep < repeat; rep++) {
      for (int i = 0; i < buffer_size; i++) {
        sample = approx::compiletime_table::sin(angle);
        angle += angle_delta;
        if (angle > 2*approx::PI) angle -= 2*approx::PI;
      }
    }
  }
  std::cout << "double + compiletime_table::sin : " << time << std::endl;

  return 0;
}
