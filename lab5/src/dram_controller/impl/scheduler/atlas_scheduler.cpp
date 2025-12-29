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
