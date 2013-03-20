#include "Vtb.h"
#include "verilated.h"

#if VM_TRACE
#include "verilated_vcd_c.h"
#endif

#define HALF_PER_PS 4500
// Number of simulation cycles
//                                 ns
#define NUM_CYCLES  ((vluint64_t)4000000 * (vluint64_t)500 / (vluint64_t)HALF_PER_PS)

int main(int argc, char **argv, char **env)
{
  // Half cycles
  vluint64_t hcycle;
  
  Verilated::commandArgs(argc, argv);
  // Init top verilog instance
  Vtb* top = new Vtb;
  
#if VM_TRACE
  // Init VCD trace dump
  Verilated::traceEverOn(true);
  VerilatedVcdC* tfp = new VerilatedVcdC;
  top->trace (tfp, 99);
  tfp->spTrace()->set_time_resolution ("1 ps");
  tfp->open ("verilator_tb.vcd");
#endif
  
  // Initialize simulation inputs
  /*top->CPU_RESET_n = 0;
  top->FPGA_CLK    = 1;
  top->JOY1_n      = 0x3F;
  top->JOY2_n      = 0x3F;
  top->SD_DAT0     = 0;
  top->CFG_DIN     = 0;*/
	top->sys_clk = 0;
	top->xvclk = 1;
	top->xpclk = 1;
	top->xresetl = 0;
	
  
  // Run simulation for NUM_CYCLES clock periods
  for (hcycle = 0; hcycle < (NUM_CYCLES * 2); )
  {
    // Reset ON during 12 cycles
    // top->CPU_RESET_n = (hcycle < (vluint64_t)24) ? 0 : 1;
    // Toggle clock
    // top->FPGA_CLK    = top->FPGA_CLK ^ 1;

    // Evaluate verilated model		
		top->eval ();
    
#if VM_TRACE
    // Dump signals into VCD file
    if (tfp) tfp->dump (hcycle * HALF_PER_PS);
#endif
    // Next half cycle
    hcycle++;
				
    top->xresetl = (hcycle < (vluint64_t)(80000 / HALF_PER_PS)) ? 0 : 1;
		top->sys_clk = top->sys_clk ^ 1;
		if (!(hcycle & 0x3))
			top->xvclk = top->xvclk ^ 1;
		if (!(hcycle & 0x7))
			top->xpclk = top->xpclk ^ 1;
		
    if (Verilated::gotFinish())  exit(0);
  }
  top->final();
  
#if VM_TRACE
  if (tfp) tfp->close();
#endif

  exit(0);
}
