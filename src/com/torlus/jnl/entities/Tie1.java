package com.torlus.jnl.entities;

import com.torlus.jnl.*;

public class Tie1 extends Entity {
	@Override
	public String getBaseName() {
		return null;
	}

	public Tie1() {
		ios.add(new Signal("z", SignalType.OUT));
	}
}
