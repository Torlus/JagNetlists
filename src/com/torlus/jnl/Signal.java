package com.torlus.jnl;

import java.util.Vector;

public class Signal implements Comparable<Signal> {

	public static int MAX = -2;
	public static int NONE = -1;
	
	public SignalType type = SignalType.LOCAL;
	public String name = null;
	// 2 dimensions should be enough
	public int bit = NONE;
	public int index = NONE;
	
	public Signal() {
		
	}
	public Signal(String name, SignalType type) {
		this.name = name;
		this.type = type;
	}
	
	public boolean equals(Signal s) {
		return (type == s.type
				&& name.equals(s.name)
				&& bit == s.bit
				&& index == s.index);
	}
	
	public String toString() {
		String res = type + " " + name;
		if (bit >= 0) {
			res += "<" + bit + ">";
		}
		if (index >= 0) {
			res += "[" + index + "]";
		}
		return res;
	}
		
	public static Vector<Signal> createSignals(String name, SignalType type, int width, int min, int max) {
		Vector<Signal> sigs = new Vector<Signal>();
		if (width < 0) {
			if (min < 0) {
				// Single signal
				Signal s = new Signal();
				s.name = name;
				s.type = type;
				sigs.add(s);
			} else {
				// Array of single signals
				while(min <= max) {
					Signal s = new Signal();
					s.name = name;
					s.type = type;
					s.index = min;
					sigs.add(s);
					min++;
				}
			}
		} else {
			if (min < 0) {
				// Sized single signal => bit vector
				for(int w = 0; w < width; w++) {
					Signal s = new Signal();
					s.name = name;
					s.type = type;
					s.bit = w;
					sigs.add(s);								
				}
			} else {
				// Sized signals array
				while(min <= max) {
					for(int w = 0; w < width; w++) {
						Signal s = new Signal();
						s.name = name;
						s.type = type;
						s.bit = w;
						s.index = min;
						sigs.add(s);							
					}
					min++;
				}
			}
		}
		return sigs;
	}

	/*public static int findDimensions(Signal ios[], int n, int dim[]) {
		Signal io = ios[n];
		String name = io.name;
		int startBit = io.bit;
		int startIndex = io.index;
		int currentBit = startBit;
		int currentIndex = startIndex;
		
		SignalType st = io.type;
		
		dim[0] = startBit;
		dim[2] = startIndex;
		
		int org_n = n;
		boolean fixIo = false;
		
		n++;
		while(n < ios.length) {
			io = ios[n];
			System.out.println("$$$ " + io);
			if (name.equals(io.name)) {
				if (!st.equals(io.type)) {
					if ( (st.equals(SignalType.OUT) && io.type.equals(SignalType.IO))
							|| (st.equals(SignalType.IO) && io.type.equals(SignalType.OUT)) ) {
						fixIo = true;
					} else {
						throw new RuntimeException("Unexpected " + name + " (different signal types)");
					}
				}
				if (startBit == Signal.NONE) {
					if (startIndex == Signal.NONE) {
						throw new RuntimeException("Unexpected " + name);
					} else {
						// indexed bit array
						if (io.index != currentIndex + 1) {
							throw new RuntimeException("Unsupported " + name + " cb=" + currentBit + " ci=" + currentIndex + " b=" + io.bit + " i=" + io.index);
						}
						currentIndex++;
					}
				} else {
					if (startIndex == Signal.NONE) {
						// bit vector
						if (io.bit != currentBit + 1) {
							throw new RuntimeException("Unsupported " + name + " cb=" + currentBit + " ci=" + currentIndex + " b=" + io.bit + " i=" + io.index);
						}
						currentBit++;
					} else {
						// indexed bit vector
						if ((io.bit == currentBit + 1) && (io.index == currentIndex)) {
							currentBit++;
						} else if ((io.bit == startBit) && (io.index == currentIndex + 1)) {
							currentIndex++;
							currentBit = startBit;
						} else {
							throw new RuntimeException("Unsupported " + name + " cb=" + currentBit + " ci=" + currentIndex + " b=" + io.bit + " i=" + io.index);
						}
					}
				}
			} else {
				break;
			}
			n++;
		}
		n--;
		
		if (fixIo) {
			while(org_n <= n) {
				io = ios[org_n];
				if (io.type == SignalType.OUT) {
					System.out.println("Warning : inferred buffer for " + io + " to match IO type of elements of the same group.");
					io.type = SignalType.IO;
				}
				org_n++;
			}
		}
		
		dim[1] = currentBit;
		dim[3] = currentIndex;
		
		return n;
	}*/
	
	
	
	
	
	
	
	
	
	
	
	
	
	public String vhdlName() {
		String res = name;
		res = res.replaceAll("\\\\", "_n");
		if (index != Signal.NONE) {
			res = res + "_" + index;
		}
		return res;
	}
	
	public String verilogName() {
		String res = name;
		res = res.replaceAll("\\\\", "_n");
		if (index != Signal.NONE) {
			res = res + "_" + index;
		}
		return res;
	}
	
	
	public String vhdlWireName() {
		String res = vhdlName();
		if (type == SignalType.IO) {
			// Use output buffer
			if (bit != Signal.NONE) {
				res += "_b" + bit;
			}
			res += "_obuf";
		} else {
			if (bit != Signal.NONE) {
				res += "(" + bit + ")";
			}
		}
		return res;
	}

	@Override
	public int compareTo(Signal other) {
		int res = name.compareTo(other.name);
		if (res != 0)
			return res;
		if (bit != other.bit)
			return bit - other.bit;
		if (index != other.index)
			return index - other.index;
		return 0;
	}
	
}
