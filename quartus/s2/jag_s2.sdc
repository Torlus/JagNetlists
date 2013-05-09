create_clock -name OSC_CLK0 -period 20.0 [get_ports OSC_CLK0]

derive_pll_clocks

set sys_clk pll|altpll_component|pll|clk[2]
set ram_clk pll|altpll_component|pll|clk[3]

#create_generated_clock -name ram_clk_pin -source $ram_clk -offset 0.5 [get_ports {SSRAM_CLK}]
create_generated_clock -name ram_clk_pin -source $ram_clk [get_ports {SSRAM_CLK}]

derive_clock_uncertainty

# Clock
set tCLK 12.5

# PCB delay
set tPCB_min 0.4
set tPCB_max 0.6

# SSRAM - inputs
set SSR_tS_max 1.5
set SSR_tH_min 0.5
# SSRAM - outputs
set SSR_tCO_max 3.4
set SSR_tDOH_min 1.3

set_output_delay -clock ram_clk_pin -max [expr $SSR_tS_max + $tPCB_max] \
[get_ports {SSRAM_CE1_n SSRAM_OE_n SSRAM_BWE_n SSRAM_ADSC_n SSRAM_ADSP_n SSRAM_ADV_n \
SSRAM_ADDR[*] SSRAM_BE_n[*] SSRAM_DQ[*]}]

set_output_delay -clock ram_clk_pin -min [expr -$SSR_tH_min + $tPCB_min] \
[get_ports {SSRAM_CE1_n SSRAM_OE_n SSRAM_BWE_n SSRAM_ADSC_n SSRAM_ADSP_n SSRAM_ADV_n \
SSRAM_ADDR[*] SSRAM_BE_n[*] SSRAM_DQ[*]}]

set_input_delay -clock ram_clk_pin -max [expr $SSR_tCO_max + $tPCB_max] \
[get_ports {SSRAM_DQ[*]}]

set_input_delay -clock ram_clk_pin -min [expr $SSR_tDOH_min + $tPCB_min] \
[get_ports {SSRAM_DQ[*]}]
