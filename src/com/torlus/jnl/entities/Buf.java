package com.torlus.jnl.entities;

import com.torlus.jnl.*;

public class Buf extends Entity {
	@Override
	public String getBaseName() {
		return null;
	}

	public Buf() {
		ios.add(new Signal("z", SignalType.OUT));
		ios.add(new Signal("a", SignalType.IN));
	}

	@Override
	public String vhdlInstance(Instance inst) {
		String vhdl = "$z$ <= $a$;\n";
		return vhdlMap(inst, vhdl);
	}

}
