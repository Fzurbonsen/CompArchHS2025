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
#include "dram_controller/impl/atlas_meta_controller.h"

namespace Ramulator {

// meta controller as described in the paper
ATLASMetaController meta_controller;

class ATLAS : public IScheduler, public Implementation {
  RAMULATOR_REGISTER_IMPLEMENTATION(IScheduler, ATLAS, "ATLAS", "ATLAS DRAM Scheduler.")
  private:
    IDRAM* m_dram;

  public:
    void init() override { };

    void setup(IFrontEnd* frontend, IMemorySystem* memory_system) override {
      m_dram = cast_parent<IDRAMController>()->m_dram;
    };

    ReqBuffer::iterator compare(ReqBuffer::iterator req1, ReqBuffer::iterator req2) override {
      Clk_t m_clk = meta_controller.m_clk;

      // Rule 1.1
      if (((m_clk - req1->arrive) > ATLAS_T) ^ (m_clk - req2->arrive) > ATLAS_T) {
        return (m_clk - req1->arrive) > ATLAS_T ? req1 : req2;
      }

      // Rule 1.2
      int rank_req1 = meta_controller.get_thread_rank(req1->source_id);
      int rank_req2 = meta_controller.get_thread_rank(req2->source_id);

      if (rank_req1 != rank_req2) {
        return rank_req1 < rank_req2 ? req1 : req2;
      }

      // Rule 1.3
      bool ready_req1 = m_dram->check_ready(req1->command, req1->addr_vec);
      bool ready_req2 = m_dram->check_ready(req2->command, req2->addr_vec);
      if (ready_req1 ^ ready_req2) {
        return ready_req1 ? req1 : req2;
      }

      // Rule 1.4
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
