package com.torlus.jnl;

import java.util.*;

public abstract class Entity {

	// public String name = null;
	public Vector<Signal> ios = new Vector<Signal>();
	public int max = 0; 
	
	public abstract String getBaseName();
	
	public boolean resize(int max) {
		return false;
	}
	
 public void findDeps(TreeMap<String, Entity> map) {
		String name = getBaseName();
		if (name != null)
			map.put(name, this);
	}
	
	public String vhdlIoDecl() {
		String vhdl = "";
		for(int n = 0; n < ios.size(); n++) {
			Signal io = ios.get(n);
			// System.out.println("$$ " + io);
			if (io.bit == Signal.NONE) {
				// std_logic
				vhdl += "\t" + io.vhdlName() + " : " + io.type.vhdlPortType() + " std_logic;\n";
			} else {
				// std_logic_vector
				int start = io.bit;
				int current = start;
				String name = io.vhdlName();
				n++;
				while(n < ios.size()) {
					io = ios.get(n);
					// System.out.println("$$$$ " + io);
					if (name.equals(io.vhdlName())) {
						if (io.bit != current + 1)
							throw new RuntimeException("Unsupported");
						current++;
					} else
						break;
					n++;
				}
				if (name.equals(io.vhdlName())) {
					// last declaration
				} else {
					// different signal, rewind
					n--;
					io = ios.get(n);
				}
				vhdl += "\t" + io.vhdlName() + " : " + io.type.vhdlPortType() + " std_logic_vector(" + start + " to " + current + ");\n";
			}
		}
		return vhdl.substring(0, vhdl.length()-2) + "\n";
	}

	public String verilogIoDecl() {
		String vlog = "";

		return vlog;
	}
	
	
	
	
	public String vhdlInstance(Instance inst) {
		
		String vhdl = inst.name;
		vhdl = vhdl.replaceAll("\\\\", "_n");
		if (vhdl.indexOf('-') >= 0) {
			vhdl = vhdl.replaceAll("\\[", "_from_");
			vhdl = vhdl.replaceAll("\\-", "_to_");
			vhdl = vhdl.replaceAll("\\]", "");
		} else {
			vhdl = vhdl.replaceAll("\\[", "_index_");
			vhdl = vhdl.replaceAll("\\]", "");
		}
		if (inst.index >= 0)
			vhdl += "_" + inst.index;

		if (getBaseName() == null) {
			vhdl = "// " + vhdl + " *** FATAL : Missing generated VHDL code\n";
			return vhdl;
		}
		
		vhdl += " : entity work." + getBaseName() + " port map (\n";
		
		for(int n = 0; n < inst.entity.ios.size(); n++) {
			Signal port = inst.entity.ios.get(n);
			Signal wire = inst.wires.get(n);

			vhdl += "\t" + port.vhdlName();
			if (port.bit != Signal.NONE) {
				vhdl += "(" + port.bit + ")";
			}
			vhdl += " => " + wire.vhdlWireName();
			vhdl += ",\n";
		}
		vhdl = vhdl.substring(0, vhdl.length() - 2) + "\n";
		vhdl += ");\n";
		
		return vhdl;
	}
	
	public String vhdlMap(Instance inst, String vhdlTemplate) {
		for(int i = 0; i < inst.wires.size(); i++) {
			vhdlTemplate = vhdlTemplate.replaceAll("\\$" + ios.get(i).vhdlName() + "\\$", inst.wires.get(i).vhdlWireName());
		}
		return vhdlTemplate;
	}
	
}
