package com.torlus.jnl;

import java.util.TreeMap;
import java.util.TreeSet;
import java.util.Vector;

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
		for (int n = 0; n < ios.size(); n++) {
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
				while (n < ios.size()) {
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
		return vhdl.substring(0, vhdl.length() - 2) + "\n";
	}

	public String verilogIoDecl() {
		String vlog = "";
		for (int n = 0; n < ios.size(); n++) {
			Signal io = ios.get(n);
			if (io.bit == Signal.NONE) {
				vlog += "\t" + io.type.verilogPortType() + " " + io.verilogName() + ",\n";
			} else {
				int start = io.bit;
				int current = start;
				String name = io.verilogName();
				n++;
				while (n < ios.size()) {
					io = ios.get(n);
					if (name.equals(io.verilogName())) {
						if (io.bit != current + 1)
							throw new RuntimeException("Unsupported");
						current++;
					} else
						break;
					n++;
				}
				if (name.equals(io.verilogName())) {
					// last declaration
				} else {
					// different signal, rewind
					n--;
					io = ios.get(n);
				}
				vlog += "\t" + io.type.verilogPortType() + "[" + start + ":" + current + "] " + io.verilogName() + ";\n";
			}
		}
		return vlog.substring(0, vlog.length() - 2) + "\n";
	}

	public String vhdlInstance(Instance inst) {

		String vhdl = inst.name + "_inst";
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

		String baseName = getBaseName();
		if (baseName == null) {
			vhdl = "// " + vhdl + " *** FATAL : Missing generated VHDL code\n";
			return vhdl;
		}

		vhdl += " : entity work." + getBaseName() + " port map (\n";

		for (int n = 0; n < inst.entity.ios.size(); n++) {
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
		for (int i = 0; i < inst.wires.size(); i++) {
			vhdlTemplate = vhdlTemplate.replaceAll("\\$" + ios.get(i).vhdlName() + "\\$", inst.wires.get(i).vhdlWireName());
		}
		return vhdlTemplate;
	}

	public String verilogInstance(Instance inst) {

		String vlog = inst.name + "_inst";
		vlog = vlog.replaceAll("\\\\", "_n");
		if (vlog.indexOf('-') >= 0) {
			vlog = vlog.replaceAll("\\[", "_from_");
			vlog = vlog.replaceAll("\\-", "_to_");
			vlog = vlog.replaceAll("\\]", "");
		} else {
			vlog = vlog.replaceAll("\\[", "_index_");
			vlog = vlog.replaceAll("\\]", "");
		}
		if (inst.index >= 0)
			vlog += "_" + inst.index;

		String baseName = getBaseName();
		if (baseName == null) {
			vlog = "// " + vlog + " *** FATAL : Missing generated Verilog code\n";
			return vlog;
		}

		vlog = baseName + " " + vlog + "\n(\n";

		for (int n = 0; n < inst.entity.ios.size(); n++) {
			Signal port = inst.entity.ios.get(n);
			Signal wire = inst.wires.get(n);

			vlog += "\t." + port.verilogName() + "(";
			if (port.bit != Signal.NONE) {
				String name = port.verilogName();
				vlog += "{";
				while (n < inst.entity.ios.size()) {
					if (name.equals(inst.entity.ios.get(n).verilogName())) {
						vlog += inst.wires.get(n).verilogWireName() + ",";
					} else {
						break;
					}
					n++;
				}
				if (n == inst.entity.ios.size() - 1) {
					// Last
				} else {
					// Different signal, rewind
					n--;
				}
				vlog = vlog.substring(0, vlog.length() - 1) + "}";
			} else {
				vlog += wire.verilogWireName();
			}
			if (n == inst.entity.ios.size() - 1) {
				vlog += ")  // " + port.type + "\n";
			} else {
				vlog += "), // " + port.type + "\n";
			}
		}
		vlog += ");\n";
		return vlog;
	}

	public String verilogMap(Instance inst, String vlogTemplate) {
		for (int i = 0; i < inst.wires.size(); i++) {
			vlogTemplate = vlogTemplate.replaceAll("\\$" + ios.get(i).verilogName() + "\\$", inst.wires.get(i).verilogWireName());
		}
		return vlogTemplate;
	}
	
}
