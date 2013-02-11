package com.torlus.jnl.entities;

import com.torlus.jnl.Entity;
import com.torlus.jnl.Instance;
import com.torlus.jnl.Signal;
import com.torlus.jnl.SignalType;

public class Join_bus extends Entity {
	@Override
	public String getBaseName() {
		return null;
	}

	public Join_bus() {
		ios.add(new Signal("z", SignalType.BUS));
		ios.add(new Signal("a", SignalType.BUS));
	}

	@Override
	public boolean resize(int max) {
		this.max = max;
		if (max != 0) {
			ios.clear();
			for (int i = 0; i <= max; i++) {
				ios.add(new Signal("z" + i, SignalType.BUS));
			}
			for (int i = 0; i <= max; i++) {
				ios.add(new Signal("a" + i, SignalType.BUS));
			}
		}
		return true;
	}

	@Override
	public String vhdlInstance(Instance inst) {
		String vhdl = "";
		for(int i = 0; i <= max; i++) {
			vhdl += inst.wires.get(i).vhdlWireName();
			vhdl += " <= ";
			vhdl += inst.wires.get(i + max + 1).vhdlWireName();
			vhdl += ";\n";
		}
		return vhdl;
	}

	@Override
	public String verilogInstance(Instance inst) {
		String vlog = "";
		for(int i = 0; i <= max; i++) {
			vlog += "assign " + inst.wires.get(i).verilogWireName();
			vlog += " = ";
			vlog += inst.wires.get(i + max + 1).verilogWireName();
			vlog += ";\n";
		}
		return vlog;
	}
	
}
