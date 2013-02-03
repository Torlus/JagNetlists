package com.torlus.jnl.entities;

import com.torlus.jnl.Entity;
import com.torlus.jnl.Signal;
import com.torlus.jnl.SignalType;

public class Ra6032a extends Entity {
	@Override
	public String getBaseName() {
		return "ra6032a";
	}

	public Ra6032a() {
		for (int i = 0; i < 27; i++) {
			Signal s = new Signal("z", SignalType.OUT);
			s.bit = i;
			ios.add(s);
		}

		ios.add(new Signal("clk", SignalType.IN));
		for (int i = 0; i < 6; i++) {
			ios.add(new Signal("a" + i, SignalType.IN));
		}
	}
}
