package com.torlus.jnl.entities;

import com.torlus.jnl.Entity;
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

}
