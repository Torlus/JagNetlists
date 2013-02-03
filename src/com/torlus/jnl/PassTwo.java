package com.torlus.jnl;

import java.util.Vector;

public class PassTwo {
	private Workspace ws;
	private String filename;
	
	public PassTwo(String filename, Workspace ws) {
		this.filename = filename;
		this.ws = ws;
	}

	public void eval(Tokenizer tk) throws Exception {
		tk.reset();

		Entity e;
		while (!tk.matchTokens(TokenType.EOF)) {
			// Search for an entity declaration
			if (tk.matchTokens(TokenType.DEF, TokenType.IDENTIFIER, TokenType.LPAREN)) {
				tk.consumeToken();
				String entityName = tk.nextToken().getValue();
				tk.consumeToken(2);
				System.out.println("    Processing Entity [" + entityName + "]");

				e = ws.load(entityName);
				if (e != null) {
					System.out.println("    Entity [" + entityName + "] is hardcoded, skip");
					ws.entities.add(e);
					tk.consumeToken();
					continue;
				}

				CompositeEntity ce = (CompositeEntity) ws.find(entityName);

				while (!tk.matchTokens(TokenType.BEGIN))
					tk.consumeToken();
				tk.consumeToken();

				while (!tk.matchTokens(TokenType.END)) {
					evalEntity(tk, ce);
				}
				tk.consumeToken();
				if (!tk.matchTokens(TokenType.SEMICOLON))
					throw new Exception("Exepected ; (END)");
				tk.consumeToken();

			} else { // DEF
				tk.consumeToken();
			}
		} // EOF

	}

	private void evalEntity(Tokenizer tk, CompositeEntity e) throws Exception {

		while (!tk.matchTokens(TokenType.END)) {
			String instanceName = null;
			if (tk.matchTokens(TokenType.IDENTIFIER, TokenType.LSQRBR, TokenType.NUMBER, TokenType.MINUS, TokenType.NUMBER,
					TokenType.RSQRBR, TokenType.ASSIGN)) {
				instanceName = tk.nextToken(0).getValue() + "[" + tk.nextToken(2).getValue() + "-" + tk.nextToken(4).getValue() + "]";
				tk.consumeToken(7);
			} else if (tk.matchTokens(TokenType.IDENTIFIER, TokenType.LSQRBR, TokenType.NUMBER, TokenType.RSQRBR, TokenType.ASSIGN)) {
				instanceName = tk.nextToken(0).getValue() + "[" + tk.nextToken(2).getValue() + "]";
				tk.consumeToken(5);
			} else if (tk.matchTokens(TokenType.IDENTIFIER, TokenType.ASSIGN)) {
				instanceName = tk.nextToken(0).getValue();
				tk.consumeToken(2);
			} else {
				throw new Exception("Assignment expected");
			}
			if (!tk.matchTokens(TokenType.IDENTIFIER, TokenType.LPAREN))
				throw new Exception("Entity expected");
			String entityName = tk.nextToken().getValue();
			tk.consumeToken(2);

			System.out.println("      Found instance declaration [" + instanceName + "] of type [" + entityName + "]");

			evalInstance(tk, e, instanceName, entityName);

			if (!tk.matchTokens(TokenType.SEMICOLON))
				throw new Exception("Expected ; (Instance)");
			tk.consumeToken();
		}

		checkConnectivity(e);
	}

	private void evalInstance(Tokenizer tk, CompositeEntity parent, String instanceName, String childName) throws Exception {

		Entity child = null;
		boolean special = false;

		/*if ("dummy".equals(childName) || "join".equals(childName) || "join_bus".equals(childName)) {
			child = ws.load(childName);
			special = true;
		} else {
			child = ws.find(childName);
			if (child == null) {
				child = ws.load(childName);
				if (child != null) {
					ws.entities.add(child);
				}
			}
		}*/

		child = ws.load(childName);
		if (child == null) {
			child = ws.find(childName);
		} else {
			if (child.resize(0)) {
				special = true;
			}
		}

		if (child == null)
			throw new Exception("Unknown entity [" + childName + "]");

		tk.mark();

		// (Try to) guess the instanciation scheme (single or multiple) on the basis of the first signal
		// Adjust size of variable-sized entities (DUMMY, JOIN)

		int index = Signal.NONE;
		if (!tk.matchTokens(TokenType.IDENTIFIER))
			throw new Exception("Expected identifier");
		String name = tk.nextToken().getValue();
		tk.consumeToken();
		if (tk.matchTokens(TokenType.LSQRBR, TokenType.NUMBER, TokenType.RSQRBR)) {
			// Single index
			index = Integer.parseInt(tk.nextToken(1).getValue());
			tk.consumeToken(3);
		}

		int instmax = 0;

		if (tk.matchTokens(TokenType.LSQRBR, TokenType.NUMBER, TokenType.MINUS, TokenType.NUMBER, TokenType.RSQRBR)) {
			// Repeat declaration => multiple instances
			int min = Integer.parseInt(tk.nextToken(1).getValue());
			int max = Integer.parseInt(tk.nextToken(3).getValue());
			if (min > max)
				throw new Exception("TODO");
			instmax = max - min;
			// Check if the repeat declaration is about bit vectors
			Signal s = parent.findSignal(name, Signal.MAX, min);
			if (s != null) {
				// System.out.println("Resize 1 - " + name);
				if (child.ios.get(0).bit != Signal.NONE) {

				} else if (!child.resize(s.bit)) {
					instmax = (instmax + 1) * (s.bit + 1) - 1;
				}
			}
		} else if (tk.matchTokens(TokenType.LSQRBR, TokenType.NUMBER, TokenType.DOTDOT, TokenType.NUMBER, TokenType.RSQRBR)) {
			// Range declaration => single instance
			int min = Integer.parseInt(tk.nextToken(1).getValue());
			int max = Integer.parseInt(tk.nextToken(3).getValue());
			if (min > max)
				throw new Exception("TODO");
			// child.resize(max - min);
		} else {
			// Single signal (may be indexed), check if it is a bit vector (declared), or an inferred one
			Signal s = parent.findSignal(name, Signal.MAX, index);
			if (s != null) {
				// Bit vector
				if (special || child.ios.get(0).bit != Signal.NONE) {
					// First signal of the child entity is also a bit vector => single instance
					// System.out.println("Resize 2 - " + name);
					child.resize(s.bit);
				} else {
					instmax = s.bit;
				}
			} else {
				// Inferred single signal
				// GE 12/06/2012 - Not all bit vectors are declared (!) - See brlq in ARITH.NET
				// So fix it
				/* if (child.ios.get(0).bit != Signal.NONE) {
					System.out.println("      Warning : undeclared bit vector, fixing it.");
					String ioName = child.ios.get(0).name;
					for(int i = 0; i < child.ios.size(); i++) {
						if (!ioName.equals(child.ios.get(i).name))
							break;
						Signal s2 = new Signal(name, SignalType.LOCAL);
						s2.bit = child.ios.get(i).bit;
						s2.index = index; // ???
						parent.locals.add(s2);
						System.out.println("        Inferred missing signal " + s2);
					}
				}*/
				// GE 12/06/2012 - Screwed! see adda in ARITH.NET
				// The first signal is not enough to guess the instanciation scheme...
				// How to deal with both :
				// Adda := EO (adda, alua, compa32); (3 bits vectors - adda is undeclared)
				// Mula := MX2 (mula, losrcdp, hisrcdp, multselp); (3 (declared) bit vectors and one single signal)
				// I guess the quickest (and maybe safest) way would be to modify the source code to add missing declarations...
			}
		}
		System.out.print("      About to instantiate " + (instmax + 1) + " " + childName + "(s) - ");
		if (child.getBaseName() != null) {
			System.out.println("imported module " + child.getBaseName());
		} else {
			System.out.println("generated code.");
		}

		Vector<Instance> instances = null;
		boolean ok = false;

		for (int attempt = 0; attempt < 2; attempt++) {

			tk.rewind();
			
			instances = new Vector<Instance>();
			for (int i = 0; i <= instmax; i++) {
				Instance inst = new Instance();
				inst.name = instanceName;
				if (instmax != 0) {
					inst.index = i;
				} else {
					inst.index = Signal.NONE;
				}
				inst.entity = child;
				inst.info = this.filename + " (" + tk.nextToken().getLine() + ") - " + inst.name + " : " + childName;
				instances.add(inst);
			}

			

			// Lay out signals
			while (!tk.matchTokens(TokenType.RPAREN)) {

				if (tk.matchTokens(TokenType.COMMA)) {
					tk.consumeToken();
					continue;
				}

				index = Signal.NONE;
				if (!tk.matchTokens(TokenType.IDENTIFIER))
					throw new Exception("Expected identifier");
				name = tk.nextToken().getValue();
				tk.consumeToken();
				if (tk.matchTokens(TokenType.LSQRBR, TokenType.NUMBER, TokenType.RSQRBR)) {
					// Single index
					index = Integer.parseInt(tk.nextToken(1).getValue());
					tk.consumeToken(3);
				}

				if (tk.matchTokens(TokenType.LSQRBR, TokenType.NUMBER, TokenType.MINUS, TokenType.NUMBER, TokenType.RSQRBR)) {
					// Repeat declaration
					if (index != Signal.NONE)
						throw new Exception("Unsupported");

					int min = Integer.parseInt(tk.nextToken(1).getValue());
					int max = Integer.parseInt(tk.nextToken(3).getValue());
					if (min > max)
						throw new Exception("TODO");
					if (max - min != instmax) {
						// Test for range of bit vectors
						Signal s = parent.findSignal(name, Signal.MAX, min);
						boolean bv = true;
						int bitmax = 0;
						if (s == null) {
							bv = false;
							bitmax = ((instmax + 1) / (max - min + 1)) - 1;
							System.out.println("bits=" + bitmax);
						} else {
							bitmax = s.bit;
						}

						for (int i = min; i <= max; i++) {
							for (int b = 0; b <= bitmax; b++) {
								Signal s2;
								if (bv) {
									s2 = parent.findSignal(name, b, i);
								} else {
									s2 = parent.findSignal(name, Signal.NONE, i);
								}
								if (s2 == null)
									throw new Exception("WTF " + name + " index=" + i);
								instances.get((bitmax + 1) * i + b).wires.add(s2);
							}
						}
						// throw new Exception("Mismatched index sizes");
					} else {
						for (int i = 0; i <= instmax; i++) {
							Signal s = parent.findSignal(name, Signal.MAX, min + i);
							if (s != null) {
								// Indexed bit vector => flatten it on every instance
								for (int b = 0; b <= s.bit; b++) {
									Signal s2 = parent.findSignal(name, b, min + i);
									if (s2 == null)
										throw new Exception("Undeclared bit vector");
									instances.get(i).wires.add(s2);
								}
							} else {
								// Indexed single signal
								// Infer signal if needed
								s = parent.findSignal(name, Signal.NONE, min + i);
								if (s == null) {
									s = new Signal();
									s.name = name;
									s.index = min + i;
									parent.locals.add(s);
									System.out.println("        Inferred signal " + s);
								}
								// Lay one indexed single signal on every instance
								instances.get(i).wires.add(s);
							}
						}
					}
					tk.consumeToken(5);
				} else if (tk.matchTokens(TokenType.LSQRBR, TokenType.NUMBER, TokenType.DOTDOT, TokenType.NUMBER, TokenType.RSQRBR)) {
					// Range declaration
					int min = Integer.parseInt(tk.nextToken(1).getValue());
					int max = Integer.parseInt(tk.nextToken(3).getValue());
					if (min > max)
						throw new Exception("TODO");
					for (int i = min; i <= max; i++) {
						Signal s = parent.findSignal(name, Signal.MAX, i);
						if (s != null) {
							// Range of bit vectors
							// Lay the whole range (of flattened bit vectors) on every instance
							// GE 17/06/2012 - Two cases (for now) :
							// FA320 := FA332_INT (st, unused[0..1], at[0..2]); (bit vectors flattened out)
							// Inssel := MX8P (intins, ins[0..7], icount[0..2]); (one single bit of each "ins" vectors per instance)
							for (int j = 0; j <= instmax; j++) {
								if (attempt == 0) {
									for (int b = 0; b <= s.bit; b++) {
										Signal s2 = parent.findSignal(name, b, i);
										if (s2 == null)
											throw new Exception("Undeclared bit vector");
										instances.get(j).wires.add(s2);
									}
								} else {
									Signal s2 = parent.findSignal(name, j, i);
									if (s2 == null)
										throw new Exception("Undeclared bit vector");
									instances.get(j).wires.add(s2);
								}

							}
						} else {
							// Infer signal if needed
							s = parent.findSignal(name, Signal.NONE, i);
							if (s == null) {
								s = new Signal();
								s.name = name;
								s.index = i;
								parent.locals.add(s);
								System.out.println("        Inferred signal " + s);
							}
							// Lay the whole range on every instance
							for (int j = 0; j <= instmax; j++) {
								instances.get(j).wires.add(s);
							}
						}
					}
					tk.consumeToken(5);
				} else if (tk.matchTokens(TokenType.LCRLBR, TokenType.NUMBER, TokenType.MINUS, TokenType.NUMBER, TokenType.RCRLBR)) {
					// Repeat declaration on bit vector
					int min = Integer.parseInt(tk.nextToken(1).getValue());
					int max = Integer.parseInt(tk.nextToken(3).getValue());
					if (min > max)
						throw new Exception("TODO");
					if (max - min != instmax)
						throw new Exception("Mismatched index/bit vector sizes");
					for (int i = 0; i <= instmax; i++) {
						// Bit vectors have to be declared
						Signal s = parent.findSignal(name, min + i, index);
						if (s == null) {
							throw new Exception("Undeclared bit vector");
						}
						// Lay one bit vector's bit on every instance
						instances.get(i).wires.add(s);
					}
					tk.consumeToken(5);
				} else if (tk.matchTokens(TokenType.LCRLBR, TokenType.NUMBER, TokenType.DOTDOT, TokenType.NUMBER, TokenType.RCRLBR)) {
					// Range declaration on bit vector
					int min = Integer.parseInt(tk.nextToken(1).getValue());
					int max = Integer.parseInt(tk.nextToken(3).getValue());
					if (min > max)
						throw new Exception("TODO");
					for (int i = min; i <= max; i++) {
						// Bit vectors have to be declared
						Signal s = parent.findSignal(name, i, index);
						if (s == null) {
							throw new Exception("Undeclared bit vector");
						}
						// Lay the whole range on every instance
						for (int j = 0; j <= instmax; j++) {
							instances.get(j).wires.add(s);
						}
					}
					tk.consumeToken(5);
				} else if (tk.matchTokens(TokenType.LCRLBR, TokenType.NUMBER, TokenType.RCRLBR)) {
					// Single bit index
					int bitIndex = Integer.parseInt(tk.nextToken(1).getValue());
					Signal s = parent.findSignal(name, bitIndex, index);
					if (s == null) {
						throw new Exception("Undeclared bit vector");
					}
					// Lay the bit vector's bit index on every instance
					for (int j = 0; j <= instmax; j++) {
						instances.get(j).wires.add(s);
					}
					tk.consumeToken(3);
				} else {
					// Single signal or single bit vector (both may be indexed)

					// Check if it's a bit vector
					Signal s = parent.findSignal(name, Signal.MAX, index);
					if (s != null) {
						if (instmax > 0 && s.bit != instmax)
							throw new Exception("Mismatched index/bit vector sizes");
						if (instmax > 0) {
							// Lay out one bit per instance
							for (int j = 0; j <= instmax; j++) {
								s = parent.findSignal(name, j, index);
								if (s == null)
									throw new Exception("???");
								instances.get(j).wires.add(s);
							}
						} else {
							// "Flatten" the bit vector
							int max = s.bit;
							for (int i = 0; i <= max; i++) {
								s = parent.findSignal(name, i, index);
								if (s == null)
									throw new Exception("???");
								instances.get(0).wires.add(s);
							}
						}

					} else {
						// Single signal (may be indexed)
						s = parent.findSignal(name, Signal.NONE, index);
						if (s == null) {
							s = new Signal();
							s.name = name;
							s.index = index;
							parent.locals.add(s);
							System.out.println("        Inferred signal " + s);
						}
						// Lay the signal on every instance
						for (int j = 0; j <= instmax; j++) {
							instances.get(j).wires.add(s);
						}
					}
				}

			} // RPAREN
			tk.consumeToken();

			// Check the wiring
			ok = true;
			for (int i = 0; i <= instmax; i++) {
				Instance inst = instances.get(i);
				int iwc = inst.wires.size();
				int ewc = inst.entity.ios.size();
				if (iwc != ewc) {
					/*throw new Exception("Incorrect instanciation [" + inst.name + "] (" + iwc + " wires declared)" 
							+ " of [" + inst.entity.name + "] (" + ewc + " wires expected)");*/
					System.out.println("Warning : incorrect instanciation [" + inst.name + "] (" + iwc + " wires declared)" + " of ["
							+ inst.entity.getClass().getName().toLowerCase() + "] (" + ewc + " wires expected)");
					ok = false;
					break;
				}
			}
			if (ok) {
				for (int i = 0; i <= instmax; i++) {
					Instance inst = instances.get(i);
					System.out.println("      Instance [" + inst.name + "] created");
					System.out.println("        Wiring :");
					for (int k = 0; k < inst.wires.size(); k++) {
						System.out.println("          " + inst.wires.get(k) + " <-> " + inst.entity.ios.get(k));
					}
				}
				break;
			} else {
				for (int i = 0; i <= instmax; i++) {
					Instance inst = instances.get(i);
					System.out.println("      Instance [" + inst.name + "]");
					System.out.println("        Failed wiring :");
					int min = inst.wires.size();
					if (inst.entity.ios.size() < min)
						min = inst.entity.ios.size();
					for (int k = 0; k < min; k++) {
						System.out.println("          " + inst.wires.get(k) + " <-> " + inst.entity.ios.get(k));
					}
				}

				System.out.println("Retrying...");
			}
		}
		if (!ok) {
			throw new Exception("Wiring failed for " + instanceName);
		}
		parent.instances.addAll(instances);

	}

	private void checkConnectivity(CompositeEntity e) throws Exception {
		System.out.println("Checking connectivity of entity " + e.getBaseName());

		// Check if entity's I/Os are connected to at least one compatible instance I/O
		// For outputs, there should be exactly one signal
		for (int ioNo = 0; ioNo < e.ios.size(); ioNo++) {
			Signal io = e.ios.get(ioNo);
			Vector<Signal> connections = new Vector<Signal>();

			for (int instNo = 0; instNo < e.instances.size(); instNo++) {
				Instance inst = e.instances.get(instNo);
				for (int instIoNo = 0; instIoNo < inst.wires.size(); instIoNo++) {
					Signal instIoWire = inst.wires.get(instIoNo);
					if (instIoWire.equals(io)) {
						Signal instIo = inst.entity.ios.get(instIoNo);
						connections.add(instIo);
					}
				}
			}

			if (io.type == SignalType.IN) {
				for (Signal s : connections) {
					if (s.type != SignalType.IN) {
						throw new Exception("Incompatible I/O type : " + io + " vs " + s);
					}
				}
			} else {
				int outCount = 0;
				for (Signal s : connections) {
					if (s.type == SignalType.IN) {
						if (io.type == SignalType.OUT) {
							System.out.println("  Warning : unbuffered output " + io + ", setting it to IO");
							io.type = SignalType.IO;
						}
					} else {
						outCount++;
					}
				}
				if (outCount > 1) {
					if (io.type == SignalType.TRI || io.type == SignalType.BUS) {
						System.out.println("Warning : multiple drivers for tristate signal " + io);
					} else {
						throw new Exception("Multiple drivers for output " + io);
					}
				} else if (outCount == 0) {
					if (io.type == SignalType.BUS) {
						System.out.println("Warning : no driver for tristate signal " + io);						
					} else {
						throw new Exception("No driver for output " + io);
					}
				}
			}
		} // ioNo

		// Locals should be fully wired : one single source, and at least one destination
		for (Signal local : e.locals) {
			Vector<Signal> connections = new Vector<Signal>();

			for (int instNo = 0; instNo < e.instances.size(); instNo++) {
				Instance inst = e.instances.get(instNo);
				for (int instIoNo = 0; instIoNo < inst.wires.size(); instIoNo++) {
					Signal instIoWire = inst.wires.get(instIoNo);
					if (instIoWire.equals(local)) {
						Signal instIo = inst.entity.ios.get(instIoNo);
						connections.add(instIo);
					}
				}
			}

			int inCount = 0;
			int outCount = 0;
			int tsCount = 0;
			for (Signal s : connections) {
				if (s.type == SignalType.IN) {
					outCount++;
				} else {
					//System.out.println(s);
					//inCount++;
					if (s.type == SignalType.BUS || s.type == SignalType.TRI) {
						tsCount++;
					} else {
						inCount++;
					}
				}
			}
			if (inCount > 1) {
				//if (inCount != tsCount) {
					throw new Exception("Multiple drivers for local " + local);
				//} else {
				//	System.out.println("Warning : multiple tristate drivers for local signal " + local);
				//}
			} else if (inCount == 0 && tsCount == 0) {
				throw new Exception("No driver for local " + local);
			} else if (tsCount > 1) {
				System.out.println("Warning : possible multiple tristate drivers for local signal " + local);
			}
			if (outCount == 0 && tsCount == 0) {
				System.out.println("  Warning : Local " + local + " drives nothing");
			}
		}

	}

}
