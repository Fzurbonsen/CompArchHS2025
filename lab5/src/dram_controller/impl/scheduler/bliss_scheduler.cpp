/*
 * atlas_scheduler.cpp
 * Implementation fo the ATLAS scheduler.
 * Author: Frederic zur Bonsen
 * E-Mail: fzurbonsen@ethz.ch
*/

#include <vector>

#include "base/base.h"
#include "dram_controller/controller.h"
#include "dram_controller/scheduler.h"
#include "dram_controller/impl/bliss_state.h"

namespace Ramulator {

// global BLISS state
std::map<int, BLISSState> bliss_states;

class BLISS : public IScheduler, public Implementation {
  RAMULATOR_REGISTER_IMPLEMENTATION(IScheduler, BLISS, "BLISS", "BLISS DRAM Scheduler.")
  private:
    IDRAM* m_dram;
    
    int m_channel_id = -1;

  public:
    void init() override { };

    void setup(IFrontEnd* frontend, IMemorySystem* memory_system) override {
      m_dram = cast_parent<IDRAMController>()->m_dram;
      m_channel_id = cast_parent<IDRAMController>()->m_channel_id;
    };

    ReqBuffer::iterator compare(ReqBuffer::iterator req1, ReqBuffer::iterator req2) override {
      BLISSState& bliss_state = bliss_states[m_channel_id];

      // Priority 1: Non-blacklisted applications' request
      if (bliss_state.blacklist.count(req1->source_id) != 
          bliss_state.blacklist.count(req2->source_id)) {
        return bliss_state.blacklist.count(req1->source_id) ? req2 : req1;
      }

      // Priority 2: Row-buffer hit requests
      if (m_dram->check_ready(req1->command, req1->addr_vec) != 
          m_dram->check_ready(req2->command, req2->addr_vec)) {
        return m_dram->check_ready(req1->command, req1->addr_vec) ? req1 : req2;
      }

      // Priority 3: Older requests
      if (req1->arrive != req2->arrive) {
        return req1->arrive < req2->arrive ? req1 : req2;
      }

      return req1;
    }

    ReqBuffer::iterator get_best_request(ReqBuffer& buffer) override {
      if (buffer.size() == 0) {
        return buffer.end();
      }

      for (auto& req : buffer) {
        req.command = m_dram->get_preq_command(req.final_command, req.addr_vec);
      }

      auto candidate = buffer.begin();
      for (auto next = std::next(buffer.begin(), 1); next != buffer.end(); next++) {
        candidate = compare(candidate, next);
      }
      return candidate;
    }
};

}       // namespace Ramulator
