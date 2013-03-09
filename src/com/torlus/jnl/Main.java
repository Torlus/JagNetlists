package com.torlus.jnl;

import java.io.File;
import java.io.FileInputStream;
import java.util.Arrays;
import java.util.TreeMap;

public class Main {

	public static void main(String[] args) {
		
		String inputDir = "netlists" + File.separator + "tom" + File.separator;
		String outputDirVhdl = "vhdl" + File.separator + "tom" + File.separator;
		String outputDirVerilog = "verilog" + File.separator + "tom" + File.separator;
		
		String files[] = {
				//
				// Basic blocks
				//
				"LEGO.NET",
				"DUPLO.NET",
				//
				// GPU
				//
				"ARITH.NET",
				//
				"DIVIDE.NET",
				"GPU_CTRL.NET",
				"GPU_MEM.NET",
				// imports from INS_EXEC.NET
				"EXECON.NET",
				"INTER-UA.NET",
				"PREFETCH.NET",
				"SYSTOLIC.NET",
				"INS_EXEC.NET",
				// registers
				"REGIS-WA.NET",
				//
				"SBOARD.NET",
				"GPU_RAM.NET",
				"GPU_CPU.NET",
				"GATEWAY.NET",
				//
				// Blitter
				//
				// imports from ADDRESS.NET
				"ADDRADD.NET", "ADDRCOMP.NET",
				"ADDRGEN.NET",
				"ADDRMUX.NET",
				"ADDRESS.NET",
				//
				"BLITGPU.NET",
				// imports from DATA.NET
				"ADDARRAY.NET", "DATACOMP.NET", "DATAMUX.NET", "LFU.NET",
				"SRCSHIFT.NET", "DATA.NET",
				// imports from STATE.NET
				"ACONTROL.NET", "BLITSTOP.NET", "DCONTROL.NET", "INNER.NET",
				"MCONTROL.NET", "OUTER.NET", "STATE.NET",
				//
				"BLIT.NET",
				//
				// Graphics Subsystem
				//
				// "GPU.NET", // GPU.NET is NOT used
				"GRAPHICS.NET",
				//
				// Address decode
				//
				"IODEC.NET",
				//
				// Video timing generator
				//
				"VID.NET",
				//
				// Pixel data path
				//
				"PIX.NET",
				//
				// Main data path
				//
				"DBUS.NET",
				//
				// Address bus data path
				//
				"ABUS.NET",
				//
				// Memory interface
				//
				// imports from MEM.NET
				"ARB.NET", "MEMWIDTH.NET", "BUS.NET", "CPU.NET", 
				"MEM.NET",
				//
				// Object processor
				//
				"OB.NET", 
				"WBK.NET", "OBDATA.NET", "LBUF.NET",
				//
				// Clocks
				//
				"CLK.NET",
				//
				// Misc
				//
				"MISC.NET",
				//
				// Top level
				//
				"TOM.NET",				
		};

/*		String files[] = {
				//
				// Basic blocks
				//
				"LEGO.NET",
				"DUPLO.NET",
		};
*/		
		Tokenizer tks[] = new Tokenizer[files.length];

		Workspace ws = new Workspace();

		// Tokenize source files
		System.out.println("*** Tokenizer");
		for (int f = 0; f < files.length; f++) {
			System.out.println("  Processing file : " + files[f]);

			FileInputStream in = null;
			// Tokenizer tk = new Tokenizer();
			tks[f] = new Tokenizer();
			boolean ok = false;

			try {
				in = new FileInputStream(inputDir + files[f]);
				tks[f].tokenize(in);
				ok = true;
			} catch (Exception ex) {
				ex.printStackTrace();
				// tks[f].dumpRemainingTokens();
			}
			if (in != null) {
				try {
					in.close();
				} catch (Exception ex) {
					ex.printStackTrace();
				}
			}
			if (!ok)
				return;
		}

		// Run pass #1 - Fills the workspace library, and process local declared signals as well, while we're at it...
		System.out.println("*** Compiler - Pass #1");
		for (int f = 0; f < files.length; f++) {
			System.out.println("  Processing file : " + files[f]);
			PassOne p1 = new PassOne(ws);
			boolean ok = false;
			try {
				p1.eval(tks[f]);
				ok = true;
			} catch (Exception ex) {
				ex.printStackTrace();
				tks[f].dumpRemainingTokens();
			}
			if (!ok)
				return;
		}

		// Run pass #2 - Create instances
		System.out.println("*** Compiler - Pass #2");
		for (int f = 0; f < files.length; f++) {
			System.out.println("  Processing file : " + files[f]);
			PassTwo p2 = new PassTwo(files[f], ws);
			boolean ok = false;
			try {
				p2.eval(tks[f]);
				ok = true;
			} catch (Exception ex) {
				ex.printStackTrace();
				// tks[f].dumpRemainingTokens();
			}
			if (!ok)
				return;
		}
		
		// Run pass #3 - Arrange tristate logic
		PassThreestate p3 = new PassThreestate(ws);
		try {
			p3.rewire();
		} catch(Exception ex) {
			ex.printStackTrace();
			return;
		}
		
		// System.exit(0);
		
		// Translate to VHDL/Verilog		
		TreeMap<String, Entity> deps = new TreeMap<String, Entity>();
		// ws.find("daddamux").findDeps(deps);
		Entity root = ws.find("tom");
		root.findDeps(deps);
		System.out.println(Arrays.toString(deps.keySet().toArray()));
		
		// VhdlTranslator vt = new VhdlTranslator(ws, outputDirVhdl);
		VerilogTranslator vt = new VerilogTranslator(ws, outputDirVerilog);
		vt.generate(deps.values());		
				
		System.out.println("*** Done.");

	}

}
