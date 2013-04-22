#include "verilated.h"
#include "bios.h"
#include <stdlib.h>
#include <stdio.h>
#include <time.h>

// Constructor
BIOS::BIOS(bool debug, int size)
{
		int n;
		
		dbg = debug;
		mem_array = new vluint8_t[size];
    
    // fill the arrays with random numbers
    srand (time (NULL));
		for(n = 0; n < size; n++) {
        mem_array[n] = (vluint8_t)0xFF; //rand() & 0xFF;
		}
}

// Destructor
BIOS::~BIOS()
{
    // free the memory
		delete mem_array;
}

// Binary file loading
void BIOS::load(const char *name, vluint32_t begin, vluint32_t end)
{
    FILE *fh;
    vluint8_t b[1];
		
		vluint32_t addr = begin;
		
    fh = fopen(name, "rb");
    if (fh)
    {
			while(addr < end) {
				b[0] = 0xFF;
				fread(b, 1, 1, fh);
				mem_array[addr] = b[0];
				addr += 1;
			}
			fclose(fh);
    }
    else
    {
      printf("Cannot load binary file \"%s\" !!\n", name);
    }
}

// Cycle evaluate
void BIOS::eval
(
    vluint64_t cycle,

    vluint8_t clk,
		
    vluint8_t ce_n,
    vluint8_t oe_n,

    vluint32_t a,

    vluint8_t &q,
		vluint8_t &oe )
{	
	if (!clk) return;
	
	oe = (!ce_n && !oe_n) ? 1 : 0;
	q = mem_array[a];	
}
