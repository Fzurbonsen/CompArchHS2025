/*
 * atlas_plugin.cpp
 * This file contains the implementation of the ATLAS plugin.
 * Author: Frederic zur Bonsen
 * E-Mail: fzurbonsen@ethz.ch
*/

/*
 * ATLAS Plugin:
 * The atlas plugin handles the interaction between the memory controllers
 * and ATLAS' meta controller. To acomplish this the plugin has to do the
 * following steps:
 * 1. Update the attained service of each thread.
 * 2. Keep track of bank ownership to be able to calculate next attained 
 *    service.
 * 3. Broadcast the attained service to the meta controller at the end of
 *    each quantum.
*/

#include <unordered_map>

#include "base/base.h"
#include "dram_controller/controller.h"
#include "dram_controller/plugin.h"
#include "dram_controller/impl/atlas_meta_controller.h"
#include "memory_system/memory_system.h"

namespace Ramulator {

class ATLASPlugin : public IControllerPlugin, public Implementation {
  RAMULATOR_REGISTER_IMPLEMENTATION(IControllerPlugin, ATLASPlugin, "ATLASPlugin", "ATLAS plugin to handle controller to meta controller communication.")
  private:
    IDRAM* m_dram = nullptr;

    // memory clock
    Clk_t m_clk = 0;

    // "To implement quanta, each memory controller keeps a quantum
    // duration counter."
    unsigned int quantum_duration_counter = 0;

    // tracker to store which thread owns which banks
    std::map<std::vector<int>, int> bank_ownership;

    // tracker to store how many banks a thread owns
    std::map<int, int> n_banks_owned;

    // "To enable LAS-based thread ranking, each controller needs to 
    // maintain the local AS (attained service) value for each thread."
    std::map<int, double> local_as;

    int m_row_level = -1;

    // function to handle ownership tracking
    void track_ownership(ReqBuffer::iterator& req_it) {
      auto& command_meta = m_dram->m_command_meta(req_it->command);
      std::vector<int> bank_addr_vec;
      bank_addr_vec.assign(req_it->addr_vec.begin(), req_it->addr_vec.begin() + m_row_level);

      // check if we are opening a row (ACT)
      if (command_meta.is_opening) {
        // if a new row is opened then this row is now owned by the thread
        // which opened the row
        
        // check if the bank had a previous owner
        if (bank_ownership.find(bank_addr_vec) != bank_ownership.end()) {
          int prev_owner = bank_ownership[bank_addr_vec];
          n_banks_owned[prev_owner]--;
        }

        // add the bank to its new owner
        int new_owner = req_it->source_id;
        bank_ownership[bank_addr_vec] = new_owner;
        if (n_banks_owned.find(new_owner) == n_banks_owned.end()) {
          n_banks_owned[new_owner] = 1;
          return;
        }
        n_banks_owned[new_owner]++;
        return;
      }

      // check if we are closing a row (PRE)
      if (command_meta.is_closing) {
        // for safety check if the bank had a previous owner
        if (bank_ownership.find(bank_addr_vec) == bank_ownership.end())
          return;
        
        int prev_owner = bank_ownership[bank_addr_vec];
        bank_ownership.erase(bank_addr_vec);

        // safety check
        if (n_banks_owned[prev_owner] <= 0) {
          n_banks_owned[prev_owner] = 0;
          return;
        }
        n_banks_owned[prev_owner]--;
        return;
      }
      return;
    }

  public:
    void init() override { 
      meta_controller.add_controller();
    };

    void setup(IFrontEnd* frontend, IMemorySystem* memory_system) override {
      m_dram = memory_system->get_ifce<IDRAM>();
      m_row_level = m_dram->m_levels("row");
    };

    void update(bool request_found, ReqBuffer::iterator& req_it) override {
      quantum_duration_counter++;
      meta_controller.m_clk++; // update the clock of the meta controller

      // 1. Update attained service of each thread.
      // "AS for a thread is incremented every cycle by the number of banks 
      // that are servicing that thread’s requests."
      for (const auto& [key, n] : n_banks_owned) {
        if (n > 0) {
          local_as[key] += n;
        }
      }

      // 2. Keep track of bank ownership to be able to calculate next 
      //    attained service.
      if (request_found) {
        track_ownership(req_it);
      }

      // 3. Broadcast the attained service to the meta controller at the end
      // of each quantum.
      if (quantum_duration_counter >= ATLAS_QUANTUM_LENGTH) {
        quantum_duration_counter = 0;
        meta_controller.transmit_as(local_as);
        local_as.clear();
      }
    };
};

}       // namespace Ramulator
