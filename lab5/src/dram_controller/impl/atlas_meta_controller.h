/*
 * atlas_scheduler.h
 * This file contains the definitions and structs needed by atlas_scheduler.cpp
 * Author: Frederic zur Bonsen
 * E-Mail: fzurbonsen@ethz.ch
*/

#ifndef RAMULATOR_ATLAS_META_CONTROLLER_H
#define RAMULATOR_ATLAS_META_CONTROLLER_H

#include <map>
#include <algorithm>

#include "base/base.h"

#define ATLAS_QUANTUM_LENGTH 10000000
#define ATLAS_ALPHA 0.875
#define ATLAS_T 100000

namespace Ramulator {


// MetaController to handle attained service management and thread ranking
struct ATLASMetaController {

  Clk_t m_clk;

  // total attained service for each thread
  std::map<int, double> total_as;

  // rankin of the threads (lower number -> higher priority)
  std::map<int, int> ranking;

  // incoming as from the threads
  std::map<int, double> as_buffer;

  int n_controllers = 0;
  int n_transmitted = 0;

  void add_controller();

  void transmit_as(std::map<int, double> local_as);

  void update_ranking();

  int get_thread_rank(int thread);
};

// link global meta controller
extern ATLASMetaController meta_controller;

} // namespace Ramulator

#endif // RAMULATOR_ATLAS_META_CONTROLLER_H