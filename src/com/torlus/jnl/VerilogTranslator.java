package com.torlus.jnl;

import java.util.Collection;

public class VerilogTranslator {
	private Workspace ws;
	private String dir;
	
	public VerilogTranslator(Workspace ws, String dir) {
		this.ws = ws;
		this.dir = dir;
	}

	public void generate() {
		generate(ws.entities);
	}

	public void generate(Collection<Entity> entities) {
		for(Entity e : entities) {
			if (e instanceof CompositeEntity) {
				System.out.println("#################### Processing CompositeEntity " + e.getBaseName());
				
				String vlog = "";
				vlog += "module " + e.getBaseName() + "\n" + "(\n";
				vlog += e.verilogIoDecl();
				vlog += ");\n";
				
				CompositeEntity ce = (CompositeEntity)e;
				vlog += ce.veriloglLocalDecl();
				
				vlog += "endmodule\n";
				
				System.out.println(vlog);
				
			}
		}
	}


}
