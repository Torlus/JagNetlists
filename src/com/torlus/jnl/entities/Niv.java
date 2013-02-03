package com.torlus.jnl.entities;

import com.torlus.jnl.*;

public class Niv extends Entity {
	@Override
	public String getBaseName() {
		return null;
	}

	public Niv() {
		// 260c_pri_e.pdf - CNIVXL
		ios.add(new Signal("z", SignalType.OUT));
		ios.add(new Signal("a", SignalType.IN));
	}
}
