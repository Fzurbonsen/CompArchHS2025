/*
 * bliss_meta_controller.h
 * This file contains the definitions and structs needed for the BLISS
 * meta controller.
 * Author: Frederic zur Bonsen
 * E-Mail: fzurbonsen@ethz.ch
*/

#ifndef RAMULATOR_BLISS_STATE_H
#define RAMULATOR_BLISS_STATE_H

#include <map>
#include <set>

#include "base/base.h"

#define BLISS_THRESHOLD 4
#define BLISS_INTERVAL 10000

namespace Ramulator {

struct BLISSState {
  int last_source_id = -1; // field to store the last thread
  int request_counter = 0; // counter to hold consecutive requests
  std::set<int> blacklist; // blacklist holding the blacklisted threads
  int clearing_counter = 0; // counter to hold keep track of blacklist clearing
};

// link to global bliss states map
extern std::map<int, BLISSState> bliss_states;

} // namespace Ramulator

#endif // RAMULATOR_BLISS_STATE_H