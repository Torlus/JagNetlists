package com.torlus.jnl;

public enum SignalType {
	IN, OUT, IO, BUS, TRI, BI,
	
	LOCAL;
	
	public String vhdlPortType() {
		if (this.equals(IN)) {
			return "in";
		} else if (this.equals(OUT) || this.equals(IO)) {
			return "out";
		} else {
			return "inout";
		}
	}
	
	public String verilogPortType() {
		if (this.equals(IN)) {
			return "input";
		} else if (this.equals(OUT) || this.equals(IO)) {
			return "output";
		} else {
			return "inout";
		}
	}

	
}
