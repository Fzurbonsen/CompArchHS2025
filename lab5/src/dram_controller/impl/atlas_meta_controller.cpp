/*
 * atlas_meta_controller.cpp
 * This file holds the implementation of the ATLAS Meta Controller.
 * Author: Frederic zur Bonsen
 * E-Mail: fzurbonsen@ethz.ch
*/

#include "dram_controller/impl/atlas_meta_controller.h"

namespace Ramulator {

// function to update the ranking map in the memory controller
void ATLASMetaController::update_ranking(){

  // Rule 2.2: update the total acumulated service
  for (const auto& [key, as] : as_buffer) {
    if (total_as.find(key) == total_as.end()){
      total_as[key] = 0;
    }
    total_as[key] = (ATLAS_ALPHA * total_as[key]) + (1 - ATLAS_ALPHA) * as;
  }

  // clear buffer to be ready for next quantum
  as_buffer.clear();

  // Rule 2.3: rank threads by least attained service
  std::vector<std::pair<int, double>> sorted_threads;
  sorted_threads.reserve((total_as.size()));

  for (const auto& [key, as] : total_as) {
    sorted_threads.emplace_back(key, as);
  }

  // sort by ascending total attained service
  std::sort(sorted_threads.begin(), sorted_threads.end(),
    [](const auto& a, const auto& b) {
      return a.second < b.second;
    });

  // assign rankings
  ranking.clear();
  int rank = 0;
  for (const auto& [key, as] : sorted_threads) {
    ranking[key] = rank++;
  }
}

} // namespace Ramulator