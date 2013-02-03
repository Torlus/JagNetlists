package com.torlus.jnl.entities;

import com.torlus.jnl.*;

public class Tie0 extends Entity {
	@Override
	public String getBaseName() {
		return null;
	}

	public Tie0() {
		ios.add(new Signal("z", SignalType.OUT));
	}
}
