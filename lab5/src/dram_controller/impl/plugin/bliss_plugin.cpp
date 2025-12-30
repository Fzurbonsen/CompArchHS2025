/*
 * bliss_plugin.cpp
 * This file contains the implementation of the BLISS plugin.
 * Author: Frederic zur Bonsen
 * E-Mail: fzurbonsen@ethz.ch
*/

#include "base/base.h"
#include "dram_controller/controller.h"
#include "dram_controller/plugin.h"
#include "dram_controller/impl/bliss_state.h"

namespace Ramulator {

class BLISSPlugin : public IControllerPlugin, public Implementation {
  RAMULATOR_REGISTER_IMPLEMENTATION(IControllerPlugin, BLISSPlugin, "BLISSPlugin", "BLISS plugin to update BLISS states.")
  private:
    int m_channel_id = -1;

    void update_consecutive_requests(ReqBuffer::iterator& req_it, BLISSState& bliss_state) {
      
      // check if we have reached the final command
      if (req_it->command != req_it->final_command)
        return;

      // check if the command comes form the same thread as the previous command
      if (req_it->source_id != bliss_state.last_source_id) {
        bliss_state.last_source_id = req_it->source_id;
        bliss_state.request_counter = 1;
        return;
      }

      // increment request counter
      bliss_state.request_counter++;

      // check if the request counter exceeds the threshold
      if (bliss_state.request_counter <= BLISS_THRESHOLD)
        return;

      // blacklist the thread
      bliss_state.blacklist.insert(req_it->source_id);
    }

  public:
    void init() override { };

    void setup(IFrontEnd* frontend, IMemorySystem* memory_system) override {
      m_ctrl = cast_parent<IDRAMController>();
      m_channel_id = m_ctrl->m_channel_id;

      auto& state = bliss_states[m_channel_id];
    };

    void update(bool request_found, ReqBuffer::iterator& req_it) override {
      auto& bliss_state = bliss_states[m_channel_id];

      // update bliss clearing counter
      bliss_state.clearing_counter++;

      // clear the balcklist at the end of every interval
      if (bliss_state.clearing_counter >= BLISS_INTERVAL) {
        bliss_state.blacklist.clear();
        bliss_state.clearing_counter = 0;
      }

      if (request_found) {
        update_consecutive_requests(req_it, bliss_state);
      }
    };
};

}       // namespace Ramulator
