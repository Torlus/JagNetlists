package com.torlus.jnl.entities;

import com.torlus.jnl.*;

public class LG extends Entity {
	@Override
	public String getBaseName() {
		return null;
	}

	public LGOp operation;
	public boolean invertOutput;
	public int size;

	public LG(int size, boolean invertOutput, LGOp operation) {
		this.operation = operation;
		this.invertOutput = invertOutput;
		this.size = size;
		
		ios.add(new Signal("z", SignalType.OUT));

		for(int i = 0; i < size; i++) {
			Signal s = new Signal("a" + i, SignalType.IN);
			ios.add(s);
		}
	}

	/*@Override
	public boolean resize(int max) {
		this.max = max;
		if (max != 0) {
			ios.clear();
			for(int b = 0; b <= max; b++) {
				Signal s = new Signal("z", SignalType.OUT);
				s.bit = b;
				ios.add(s);
			}			
			for(int i = 0; i < size; i++) {
				for(int b = 0; b <= max; b++) {
					Signal s = new Signal("a" + i, SignalType.IN);
					// s.index = i;
					s.bit = b;
					ios.add(s);
				}
			}
		}
		return true;
	}*/

	@Override
	public String vhdlInstance(Instance inst) {
		String vhdl = "";
		vhdl += inst.wires.get(0).vhdlWireName();
		vhdl += " <= ";
		if (invertOutput)
			vhdl += "not(";
		vhdl += inst.wires.get(1).vhdlWireName();
		for(int i = 2; i < size + 1; i++) {
			switch(operation) {
			case AND:
				vhdl += " and "; break;
			case OR:
				vhdl += " or "; break;
			case XOR:
				vhdl += " xor "; break;
			}
			vhdl += inst.wires.get(i).vhdlWireName();
		}
		if (invertOutput) {
			vhdl += ")";
		}
		vhdl += ";\n";
		return vhdl;
	}
}
