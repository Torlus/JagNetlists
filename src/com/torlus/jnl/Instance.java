package com.torlus.jnl;

import java.util.Vector;

public class Instance {
	public String name;
	public int index;

	public String info;
	public Entity entity;

	public Vector<Signal> wires = new Vector<Signal>();

	public String vhdlInstance() {
		String vhdl = "";
		if (index <= 0) {
			vhdl += "\n// " + info + "\n";
		}
		vhdl += entity.vhdlInstance(this);
		return vhdl;
	}

	public String verilogInstance() {
		String vlog = "";
		if (index <= 0) {
			vlog += "\n// " + info + "\n";
		}
		vlog += entity.verilogInstance(this);
		return vlog;
	}

}
