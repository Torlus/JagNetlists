#include "Vtb.h"
#include "verilated.h"
#include "vga_out.h"
#include "dram.h"
#include "bios.h"
#include "cart.h"
#include "trace_68k.h"

#if VM_TRACE
#include "verilated_vcd_c.h"
#endif

// #define HALF_PER_PS 4500
#define HALF_PER_PS 9400
// Number of simulation cycles
//                                 ns
// #define NUM_CYCLES  ((vluint64_t)1599000000 * (vluint64_t)500 / (vluint64_t)HALF_PER_PS)
#define NUM_MS 15000
#define LOG_START_MS 99994
#define LOG_EVERY_MS 99991

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

	
	vluint8_t dram_clk;
  vluint8_t dram_ras_n;
  vluint8_t dram_cas_n;

  vluint8_t dram_oe_n;
  vluint8_t dram_uw_n;
	vluint8_t dram_lw_n;

  vluint16_t dram_a;

  vluint64_t dram_d;
  vluint64_t dram_q;
	vluint8_t dram_oe;
	
	vluint8_t bios_clk;
	vluint8_t bios_ce_n;
	vluint8_t bios_oe_n;
	vluint32_t bios_a;
	vluint8_t bios_q;
	vluint8_t bios_oe;

	vluint8_t cart_clk;
	vluint8_t cart_ce_n;
	vluint8_t cart_oe_n;
	vluint32_t cart_a;
	vluint32_t cart_q;
	vluint8_t cart_oe;
	
  Verilated::commandArgs(argc, argv);
  // Init top verilog instance
  Vtb* top = new Vtb;
  // Init VGA output C++ model
  // VgaOut* vga = new VgaOut(1, 24, HS_POS_POL|VS_POS_POL, 0, 2000, 0, 1000, "snapshot");
	VgaOut* vga = new VgaOut(1, 24, 0, 0, 900, 0, 700, "snapshot");
  DRAM *dram = new DRAM(1, 0x200000);
	dram->load("dram.bin", 0x4000, 0x200000);
	BIOS *bios = new BIOS(0, 0x100000);
	bios->load("os.bin", 0x0, 0x100000);
	CART *cart = new CART(1 /* 16 bits */, 0, 0x800000);
	cart->load("cart.bin", 0x0, 0x800000);
  // Init 68000 trace
	Trace68k* trc = new Trace68k(cart->mem_array, bios->mem_array, dram->mem_array);

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
	fprintf(stderr, "@%d ms\n", ms);
	fprintf(stdout, "@%d ms\n", ms);
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

		dram_clk		= top->sys_clk;
		dram_ras_n 	= top->dram_ras_n;
		dram_cas_n 	= top->dram_cas_n;
		dram_oe_n		= top->dram_oe_n;
		dram_uw_n		= top->dram_uw_n;
		dram_lw_n		= top->dram_lw_n;
		dram_a			= top->dram_a;
		dram_d			= top->dram_d;
		
		dram->eval( hcycle / 2,
								dram_clk, dram_ras_n, dram_cas_n,
								dram_oe_n, dram_uw_n, dram_lw_n, 
								dram_a, dram_d, dram_q, dram_oe );
		
		top->dram_q = dram_q;
		top->dram_oe = dram_oe;

		bios_clk = top->sys_clk;
		bios_ce_n = top->os_rom_ce_n;
		bios_oe_n = top->os_rom_oe_n;
		bios_a = top->os_rom_a;
		
		bios->eval( hcycle / 2, bios_clk,
								bios_ce_n, bios_oe_n, bios_a,
								bios_q, bios_oe);
								
		top->os_rom_q = bios_q;
		top->os_rom_oe = bios_oe;

		cart_clk = top->sys_clk;
		cart_ce_n = top->cart_ce_n;
		cart_oe_n = top->cart_oe_n;
		cart_a = top->cart_a;
		
		cart->eval( hcycle / 2, cart_clk,
								cart_ce_n, cart_oe_n, cart_a,
								cart_q, cart_oe);
								
		top->cart_q = cart_q;
		top->cart_oe = cart_oe;
		
    trc->dump (hcycle / 2,        top->xpclk,     top->DBG_IFETCH,
               top->DBG_REG_WREN, top->DBG_REG_ADDR, top->DBG_REG_DATA,
               top->DBG_SR_REG,   top->DBG_PC_REG,   top->DBG_USP_REG,  top->DBG_SSP_REG);
		
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
