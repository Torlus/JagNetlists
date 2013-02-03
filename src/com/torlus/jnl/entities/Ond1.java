package com.torlus.jnl.entities;

import com.torlus.jnl.Entity;
import com.torlus.jnl.Signal;
import com.torlus.jnl.SignalType;

public class Ond1 extends Entity {
	@Override
	public String getBaseName() {
		return null;
	}

	public Ond1() {
		// 260c_pri_e.pdf - COND1XL
		ios.add(new Signal("z", SignalType.OUT));

		ios.add(new Signal("a", SignalType.IN));
		ios.add(new Signal("b", SignalType.IN));
		ios.add(new Signal("c", SignalType.IN));
	}
}
