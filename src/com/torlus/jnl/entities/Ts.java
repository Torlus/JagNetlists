package com.torlus.jnl.entities;

import com.torlus.jnl.Entity;
import com.torlus.jnl.Signal;
import com.torlus.jnl.SignalType;

public class Ts extends Entity {
	@Override
	public String getBaseName() {
		return null;
	}

	public Ts() {
		// 260c_pri_e.pdf - CTSXL
		ios.add(new Signal("z", SignalType.TRI)); // warning
		
		ios.add(new Signal("a", SignalType.IN));		
		ios.add(new Signal("e", SignalType.IN));
	}
}
