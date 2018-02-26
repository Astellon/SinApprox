#include <cmath>
#include <chrono>
#include <iostream>

#include "sin.h"

int main() {
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

      double dif_pade = sample - approx::pade::sin(phase);
      double dif_table = sample - approx::table::sin(phase);
      double dif_table_inter = sample - approx::table::sin(phase.toDouble());
      // mean squared error
      err_pade += dif_pade * dif_pade;
      err_table += dif_table * dif_table;
      err_table_d += dif_table_inter * dif_table_inter;

      phase += phase_delta;
      sample = 0;
    }
  }

  auto start1 = std::chrono::system_clock::now();
  for (int rep = 0; rep < repeat; rep++) {
    for (int i = 0; i < buffer_size; i++) {
      sample = std::sin(phase.toDouble());
      phase += phase_delta;
    }
  }
  auto end1 = std::chrono::system_clock::now();
  auto dur1 = end1 - start1;


  auto start2 = std::chrono::system_clock::now();
  for (int rep = 0; rep < repeat; rep++) {
    for (int i = 0; i < buffer_size; i++) {
      sample = approx::table::sin(angle);
      angle += angle_delta;
      if (angle > 2*approx::PI) angle -= 2*approx::PI;
    }
  }
  auto end2 = std::chrono::system_clock::now();
  auto dur2 = end2 - start2;

  auto start3 = std::chrono::system_clock::now();
  for (int rep = 0; rep < repeat; rep++) {
    for (int i = 0; i < buffer_size; i++) {
      sample = approx::pade::sin(angle);
      angle += angle_delta;
      if (angle > 2*approx::PI) angle -= 2*approx::PI;
    }
  }
  auto end3 = std::chrono::system_clock::now();
  auto dur3 = end3 - start3;

  auto start4 = std::chrono::system_clock::now();
  for (int rep = 0; rep < repeat; rep++) {
    for (int i = 0; i < buffer_size; i++) {
      sample = approx::table::sin(phase);
      phase += phase_delta;
    }
  }
  auto end4 = std::chrono::system_clock::now();
  auto dur4 = end4 - start4;

  auto start5 = std::chrono::system_clock::now();
  for (int rep = 0; rep < repeat; rep++) {
    for (int i = 0; i < buffer_size; i++) {
      sample = approx::pade::sin(phase);
      phase += phase_delta;
    }
  }
  auto end5 = std::chrono::system_clock::now();
  auto dur5 = end5 - start5;

  int dur1_i = std::chrono::duration_cast<std::chrono::nanoseconds>(dur1).count();
  int dur2_i = std::chrono::duration_cast<std::chrono::nanoseconds>(dur2).count();
  int dur3_i = std::chrono::duration_cast<std::chrono::nanoseconds>(dur3).count();
  int dur4_i = std::chrono::duration_cast<std::chrono::nanoseconds>(dur4).count();
  int dur5_i = std::chrono::duration_cast<std::chrono::nanoseconds>(dur5).count();

  double faster_table = static_cast<double>(dur1_i)/dur2_i;
  double faster_pade = static_cast<double>(dur1_i)/dur3_i;

  std::cout << buffer_size*repeat << " times call" << std::endl;
  std::cout << std::endl;

  std::cout << "error (root mean square)" << std::endl;
  std::cout << " error of table (uint32) : " << sqrt(err_table/repeat/buffer_size) << std::endl;
  std::cout << " error of table (double) : " << sqrt(err_table_d/repeat/buffer_size) << std::endl;
  std::cout << " error of pade           : " << sqrt(err_pade/repeat/buffer_size) << std::endl;
  std::cout << std::endl;

  std::cout << "time (using double phase)" << std::endl;
  std::cout << " std::sin time   : " << dur1_i << std::endl;
  std::cout << " table::sin time : " << dur2_i << " (" << faster_table << "x faster)" <<  std::endl;
  std::cout << " pade::sin time  : " << dur3_i << " (" << faster_pade << "x faster)" << std::endl;
  std::cout << std::endl;

  faster_table = static_cast<double>(dur1_i)/dur4_i;
  faster_pade = static_cast<double>(dur1_i)/dur5_i;

  std::cout << "time (using uint32 phase)" << std::endl;
  std::cout << " table::sin time : " << dur4_i << " (" << faster_table << "x faster)" <<  std::endl;
  std::cout << " pade::sin time  : " << dur5_i << " (" << faster_pade << "x faster)" << std::endl;
  std::cout << std::endl;
  return 0;
}
