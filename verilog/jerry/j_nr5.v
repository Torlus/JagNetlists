/* verilator lint_off LITENDIAN */
`include "defs.v"

module j_nr5
(
	output z,
	input a,
	input b,
	input c,
	input d,
	input e
);
wire zero;

// _DUPLO.NET (674) - zero : tie0
assign zero = 1'b0;

// _DUPLO.NET (675) - gate : nr6
assign z = ~(a | b | c | d | e | zero);
endmodule
/* verilator lint_on LITENDIAN */
