package com.torlus.jnl.entities;

import com.torlus.jnl.Entity;
import com.torlus.jnl.Signal;
import com.torlus.jnl.SignalType;

public class Aba032a extends Entity {
	@Override
	public String getBaseName() {
		return "aba032a";
	}

	public Aba032a() {
		for (int i = 0; i < 32; i++) {
			Signal z = new Signal("z", SignalType.BUS);
			z.bit = i;
			ios.add(z);
		}
		ios.add(new Signal("cs", SignalType.IN));
		ios.add(new Signal("we", SignalType.IN));
		// ios.add(new Signal("clk", SignalType.IN));
		for (int i = 0; i < 10; i++) {
			ios.add(new Signal("a" + i, SignalType.IN));
		}
	}
}
