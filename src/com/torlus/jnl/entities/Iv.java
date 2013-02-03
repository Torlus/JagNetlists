package com.torlus.jnl.entities;

import com.torlus.jnl.*;

public class Iv extends Entity {
	@Override
	public String getBaseName() {
		return null;
	}

	public Iv() {
		// 260c_pri_e.pdf - CIVXL
		ios.add(new Signal("z", SignalType.OUT));
		ios.add(new Signal("a", SignalType.IN));
	}

	@Override
	public String vhdlInstance(Instance inst) {
		String vhdl = "$z$ <= not $a$;\n";
		return vhdlMap(inst, vhdl);
	}

}
