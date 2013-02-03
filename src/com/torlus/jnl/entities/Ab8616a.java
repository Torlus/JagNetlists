package com.torlus.jnl.entities;

import com.torlus.jnl.Entity;
import com.torlus.jnl.Signal;
import com.torlus.jnl.SignalType;

public class Ab8616a extends Entity {
	@Override
	public String getBaseName() {
		return "ab8616a";
	}

	public Ab8616a() {
		for (int i = 0; i < 16; i++) {
			Signal s = new Signal("z", SignalType.BUS);
			s.bit = i;
			ios.add(s);
		}
		ios.add(new Signal("cs", SignalType.IN));
		ios.add(new Signal("we", SignalType.IN));
		// ios.add(new Signal("clk", SignalType.IN));
		for (int i = 0; i < 9; i++) {
			ios.add(new Signal("a" + i, SignalType.IN));
		}
	}
}
