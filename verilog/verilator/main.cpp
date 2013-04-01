#include "Vtb.h"
#include "verilated.h"
#include "vga_out.h"

#if VM_TRACE
#include "verilated_vcd_c.h"
#endif

// #define HALF_PER_PS 4500
#define HALF_PER_PS 9400
// Number of simulation cycles
//                                 ns
// #define NUM_CYCLES  ((vluint64_t)1599000000 * (vluint64_t)500 / (vluint64_t)HALF_PER_PS)
#define NUM_MS 140
#define LOG_START_MS 0
#define LOG_EVERY_MS 5

// #define CYCLES_PER_VCD ((vluint64_t)10000000 * (vluint64_t)500 / (vluint64_t)HALF_PER_PS)
#define HCYCLES_PER_MS ((vluint64_t)1000000 * (vluint64_t)1000 / (vluint64_t)HALF_PER_PS)

int main(int argc, char **argv, char **env)
{
  // Half cycles
  vluint64_t hcycle = 0;
  vluint64_t hc;
	int ms;
	
  // VGA output
  int vga_clk;
  int vga_hs;
  int vga_vs;
  int vga_r;
  int vga_g;
  int vga_b;

	
  Verilated::commandArgs(argc, argv);
  // Init top verilog instance
  Vtb* top = new Vtb;
  // Init VGA output C++ model
  // VgaOut* vga = new VgaOut(1, 24, HS_POS_POL|VS_POS_POL, 0, 2000, 0, 1000, "snapshot");
	VgaOut* vga = new VgaOut(1, 24, 0, 0, 900, 0, 700, "snapshot");
  
#if VM_TRACE
  // Init VCD trace dump
  Verilated::traceEverOn(true);
  VerilatedVcdC* tfp = new VerilatedVcdC;
  top->trace (tfp, 99);
  tfp->spTrace()->set_time_resolution ("1 ps");
  tfp->open ("verilator_tb.vcd");
  // tfp->openNext();
#endif
  
  // Initialize simulation inputs
	top->sys_clk = 0;
	top->xvclk = 1;
	top->xpclk = 1;
	top->xresetl = 0;
	
for(ms = 0; ms < NUM_MS; ms++) {
#if VM_TRACE
	if ((ms % LOG_EVERY_MS) == 0)
		tfp->openNext();
#endif
	fprintf(stderr, "%d ms\n", ms);
  // Run simulation for NUM_CYCLES clock periods
  for (hc = 0; hc < HCYCLES_PER_MS; hc++)
  {
    // Evaluate verilated model		
		top->eval ();
    
    // Dump VGA output
    // vga_clk   = top->sys_clk;
		vga_clk   = top->xvclk;
    vga_vs    = top->vga_vs_n;
    vga_hs    = top->vga_hs_n;
    vga_r     = top->vga_r;
    vga_g     = top->vga_g;
    vga_b     = top->vga_b;
    vga->eval (hcycle / 2,
               vga_clk, vga_vs, vga_hs,
               vga_r, vga_g, vga_b);

		
#if VM_TRACE
    // Dump signals into VCD file
    if (tfp) {
			if (ms >= LOG_START_MS) {
				tfp->dump (hcycle * HALF_PER_PS);
			}
		}
#endif
    // Next half cycle
    hcycle++;
		
    top->xresetl = (hcycle < (vluint64_t)(80000 / HALF_PER_PS)) ? 0 : 1;
		top->sys_clk = top->sys_clk ^ 1;
		// if (!(hcycle & 0x3))
		if (!(hcycle & 0x1))
			top->xvclk = top->xvclk ^ 1;
		// if (!(hcycle & 0x7))
		if (!(hcycle & 0x3))
			top->xpclk = top->xpclk ^ 1;
		
    if (Verilated::gotFinish())  exit(0);
  }
} // ms
  top->final();
  
#if VM_TRACE
  if (tfp) tfp->close();
#endif

  exit(0);
}
