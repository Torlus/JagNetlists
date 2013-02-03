package com.torlus.jnl.entities;

import com.torlus.jnl.*;

public class Mp16 extends Entity {
	@Override
	public String getBaseName() {
		return "mp16";
	}

	public Mp16() {
		for(int i = 0; i < 32; i++) {
			ios.add(new Signal("q" + i, SignalType.OUT));
		}
		for(int i = 0; i < 16; i++) {
			ios.add(new Signal("a" + i, SignalType.IN));
		}
		for(int i = 0; i < 16; i++) {
			ios.add(new Signal("b" + i, SignalType.IN));
		}		
		ios.add(new Signal("sign0", SignalType.IN));
		ios.add(new Signal("sign1", SignalType.IN));
		ios.add(new Signal("unk0", SignalType.IN));
		ios.add(new Signal("unk1", SignalType.IN));		
	}
}
