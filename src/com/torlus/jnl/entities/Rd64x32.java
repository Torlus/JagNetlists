package com.torlus.jnl.entities;

import com.torlus.jnl.Entity;
import com.torlus.jnl.Signal;
import com.torlus.jnl.SignalType;

public class Rd64x32 extends Entity {
	@Override
	public String getBaseName() {
		return "rd64x32";
	}

	public Rd64x32() {
		for (int i = 0; i < 32; i++) {
			ios.add(new Signal("qa" + i, SignalType.OUT));
		}
		for (int i = 0; i < 32; i++) {
			ios.add(new Signal("qb" + i, SignalType.OUT));
		}

		ios.add(new Signal("nwea", SignalType.IN));
		ios.add(new Signal("clka", SignalType.IN));

		for (int i = 0; i < 6; i++) {
			ios.add(new Signal("aa" + i, SignalType.IN));
		}
		for (int i = 0; i < 32; i++) {
			ios.add(new Signal("da" + i, SignalType.IN));
		}

		ios.add(new Signal("nweb", SignalType.IN));
		ios.add(new Signal("clkb", SignalType.IN));

		for (int i = 0; i < 6; i++) {
			ios.add(new Signal("ab" + i, SignalType.IN));
		}
		for (int i = 0; i < 32; i++) {
			ios.add(new Signal("db" + i, SignalType.IN));
		}
	}
}
